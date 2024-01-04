library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;


entity tb_qam16_wrapper is
end tb_qam16_wrapper;

architecture tb of tb_qam16_wrapper is

    component qam16_wrapper
        port (ce                   : in std_logic;
              clk                  : in std_logic;
              entrada              : in std_logic_vector (11 downto 0 );
              m_axis_data_tdata_0  : out std_logic_vector (23 downto 0 );
              m_axis_data_tdata_1  : out std_logic_vector (23 downto 0 );
              m_axis_data_tvalid_0 : out std_logic;
              m_axis_data_tvalid_1 : out std_logic;
              rst_0                : in std_logic;
              s_axis_data_tready_0 : out std_logic;
              s_axis_data_tready_1 : out std_logic;
              s_axis_data_tvalid_0 : in std_logic;
              s_axis_data_tvalid_1 : in std_logic;
              salida_I             : out std_logic_vector (7 downto 0 );
              salida_Q             : out std_logic_vector (7 downto 0 ));
    end component;

    signal ce                   : std_logic;
    signal clk                  : std_logic;
    signal entrada              : std_logic_vector (11 downto 0 );
    signal m_axis_data_tdata_0  : std_logic_vector (23 downto 0 );
    signal m_axis_data_tdata_1  : std_logic_vector (23 downto 0 );
    signal m_axis_data_tvalid_0 : std_logic;
    signal m_axis_data_tvalid_1 : std_logic;
    signal rst_0                : std_logic;
    signal s_axis_data_tready_0 : std_logic;
    signal s_axis_data_tready_1 : std_logic;
    signal s_axis_data_tvalid_0 : std_logic;
    signal s_axis_data_tvalid_1 : std_logic;
    signal salida_I             : std_logic_vector (7 downto 0 );
    signal salida_Q             : std_logic_vector (7 downto 0 );

    constant clk_period : time := 5.208333 ns; -- Periodo de 192 MHz base para entrada y salida
    signal cont_in : integer := 0; --contador de lectura de la señal de entrada
    file file_handle : text;
    file file_handle_I, file_handle_Q : text;
    signal eof : boolean := false;  

    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : qam16_wrapper
    port map (ce                   => ce,
              clk                  => clk,
              entrada              => entrada,
              m_axis_data_tdata_0  => m_axis_data_tdata_0,
              m_axis_data_tdata_1  => m_axis_data_tdata_1,
              m_axis_data_tvalid_0 => m_axis_data_tvalid_0,
              m_axis_data_tvalid_1 => m_axis_data_tvalid_1,
              rst_0                => rst_0,
              s_axis_data_tready_0 => s_axis_data_tready_0,
              s_axis_data_tready_1 => s_axis_data_tready_1,
              s_axis_data_tvalid_0 => s_axis_data_tvalid_0,
              s_axis_data_tvalid_1 => s_axis_data_tvalid_1,
              salida_I             => salida_I,
              salida_Q             => salida_Q);


    TbClock <= not TbClock after clk_period/2 when TbSimEnded /= '1' else '0';
    clk <= TbClock;

    process(clk) --192MHz
    --lectura datos FIFO
    variable line_buffer : line;
    variable nuevo_valor : STD_LOGIC_VECTOR(11 DOWNTO 0);
    
    --escritura datos FIR
    variable line_buffer_I, line_buffer_Q : line;
    variable nuevo_valor_I, nuevo_valor_Q : integer;
    
    begin
        if rst_0 = '1' then
            eof <= false; --se reinicia fin de archivo
            cont_in <= 0;
        elsif rising_edge(clk) then
            cont_in <= cont_in + 1;
            if cont_in = 96 then --cada 500 ns se lee entrada (cont = 96)
                cont_in <= 0;
                if not eof then
                    if endfile(file_handle) then 
                        eof <= true; 
                    else
                        readline(file_handle, line_buffer);
                        read(line_buffer, nuevo_valor);
                        entrada <= nuevo_valor;
                    end if;
                end if;
            end if; 
            if s_axis_data_tvalid_0 = '1' and s_axis_data_tvalid_1 = '1' and not eof then --escritura de salida de filtros FIR a 192MHz
                --escritura de salida FIR I
                nuevo_valor_I := to_integer(signed(m_axis_data_tdata_0));
                write(line_buffer_I, nuevo_valor_I); 
                writeline(file_handle_I, line_buffer_I); 
                --escritura de salida FIR Q
                nuevo_valor_Q := to_integer(signed(m_axis_data_tdata_1));
                write(line_buffer_Q, nuevo_valor_Q); 
                writeline(file_handle_Q, line_buffer_Q);
            end if;                      
        end if;
    end process;   

    process
    begin
    
       file_open(file_handle, ".\FIFO_output.txt", READ_MODE);
       --file_open(file_handle, ".\QAM_output.txt", WRITE_MODE); --salida mapeado+ZP
       file_open(file_handle_I, "C:\Users\Paula\Downloads\FIR_output_I.txt", WRITE_MODE);
       file_open(file_handle_Q, "C:\Users\Paula\Downloads\FIR_output_Q.txt", WRITE_MODE);
        
       ce <= '0';
       rst_0 <= '1';        
      
       s_axis_data_tvalid_0 <= '0';
       s_axis_data_tvalid_1 <= '0';
        
       wait for 32*clk_period;
       rst_0 <= '0';
       wait for 32*clk_period;
       ce <= '1';
       s_axis_data_tvalid_0 <= '1';
       s_axis_data_tvalid_1 <= '1';  
              
       wait;
   end process;  
    
end tb;