library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_mezclador is
end tb_mezclador;

architecture tb of tb_mezclador is

    component design_1 is
      port (
          Salida_RRC_I : in STD_LOGIC_VECTOR ( 23 downto 0 );
          Salida_RRC_Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
          TX_I : out STD_LOGIC_VECTOR ( 31 downto 0 );
          TX_Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
          antena : out STD_LOGIC_VECTOR ( 32 downto 0 );
          clk_192 : out STD_LOGIC;
          clk_52 : out STD_LOGIC;
          clk_576 : out STD_LOGIC;
          coseno : out STD_LOGIC_VECTOR ( 7 downto 0 );
          m_axis_data_tdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
          m_axis_data_tvalid_0 : out STD_LOGIC;
          rst : in STD_LOGIC;
          seno : out STD_LOGIC_VECTOR ( 7 downto 0 )
        );
    end component;

    --DDS
    signal m_axis_data_tdata_0   : std_logic_vector (15 downto 0 );
    signal m_axis_data_tvalid_0  : std_logic;
    signal clk_192, clk_52, clk_576  : std_logic;
    signal rst                   : std_logic;
    
    --MULT
    signal Salida_RRC_I : std_logic_vector (23 downto 0 ) := (others => '0');
    signal Salida_RRC_Q : std_logic_vector (23 downto 0 ) := (others => '0');
    signal TX_I, TX_Q  : std_logic_vector (31 downto 0 );
    signal coseno, seno : std_logic_vector (7 downto 0 );
    
    --SUMADOR
    signal antena  : std_logic_vector (32 downto 0 );

    constant TbPeriod : time := 1.736111 ns; --5.208333 ns; -- Periodo de 576 MHz
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';
    
    signal eof_I, eof_Q : boolean := false;
    file file_handle_I, file_handle_Q : text;
    

begin

    dut : design_1
     port map (
     Salida_RRC_I(23 downto 0) => Salida_RRC_I(23 downto 0),
     Salida_RRC_Q(23 downto 0) => Salida_RRC_Q(23 downto 0),
     TX_I(31 downto 0) => TX_I(31 downto 0),
     TX_Q(31 downto 0) => TX_Q(31 downto 0),
     antena(32 downto 0) => antena(32 downto 0),
     clk_192 => clk_192,
     clk_52 => clk_52,
     clk_576 => clk_576,
     coseno(7 downto 0) => coseno(7 downto 0),
     m_axis_data_tdata_0(15 downto 0) => m_axis_data_tdata_0(15 downto 0),
     m_axis_data_tvalid_0 => m_axis_data_tvalid_0,
     rst => rst,
     seno(7 downto 0) => seno(7 downto 0)
   );
   
    --TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';
    --clk <= TbClock;
    
    
    process(clk_576) 
    --lectura datos salidas filtros
    variable line_buffer : line;
    variable nuevo_valor : integer;
       
    begin
        if rst = '0' then
            eof_I <= false; --se reinicia fin de archivo
        elsif rising_edge(clk_576) then 
            if not eof_I then
                if endfile(file_handle_I) then 
                    eof_I <= true; 
                elsif m_axis_data_tvalid_0 = '1' then
                    readline(file_handle_I, line_buffer);
                    read(line_buffer, nuevo_valor);
                    Salida_RRC_I <= std_logic_vector(to_signed(nuevo_valor, Salida_RRC_I'length));
                end if;
            end if;
        end if;    
    end process;  
    
    
    process(clk_576) 
    --lectura datos salidas filtros
    variable line_buffer : line;
    variable nuevo_valor : integer;
       
    begin
        if rst = '0' then
            eof_Q <= false; --se reinicia fin de archivo
        elsif rising_edge(clk_576) then 
            if not eof_Q then
                if endfile(file_handle_Q) then 
                    eof_Q <= true; 
                elsif m_axis_data_tvalid_0 = '1' then
                    readline(file_handle_Q, line_buffer);
                    read(line_buffer, nuevo_valor);
                    Salida_RRC_Q <= std_logic_vector(to_signed(nuevo_valor, Salida_RRC_Q'length));
                end if;
            end if;
        end if;    
    end process;  
    


    process
    begin
        file_open(file_handle_I, ".\FIR_output_I.txt", READ_MODE);
        file_open(file_handle_Q, ".\FIR_output_Q.txt", READ_MODE);
      
      
        rst <= '0'; -- negativo
        wait for 100 ns;
        rst <= '1';               

        --TbSimEnded <= '1';
        wait;
    end process;

end tb;
