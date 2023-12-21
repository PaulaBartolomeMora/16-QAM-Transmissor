library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
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
    file file_handle2 : text;
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
--    clk <= not clk after clk_period/2;


    process(clk) --192MHz
    variable line_buffer : line;
    variable nuevo_valor : STD_LOGIC_VECTOR(11 DOWNTO 0);
    
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
                        --s_axis_data_tvalid_0 <= '1'; 
                        --s_axis_data_tvalid_1 <= '1';
                    end if;
                end if;
            end if;                      
        end if;
    end process;   
    


     process
     begin
        file_open(file_handle, "C:\Users\Paula\Downloads\FIFO_output.txt", READ_MODE);
        
        ce <= '0';
        rst_0 <= '1';
        
        --entrada <= (others => '0');
        s_axis_data_tvalid_0 <= '0';
        s_axis_data_tvalid_1 <= '0';
        
        wait for 32*clk_period;
        rst_0 <= '0';
        wait for 32*clk_period;
        ce <= '1';


        --wait for 100 * clk_period;
        wait;
    end process;  
    
end tb;


--entity tb_mapeado_16QAM IS
--end tb_mapeado_16QAM;

--architecture testbench of tb_mapeado_16QAM is
--    signal clk, ce, rst : STD_LOGIC := '0';
--    signal entrada : STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '0');
--    signal salida_I : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
--    signal salida_Q : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
--    signal s_axis_data_tvalid_0, s_axis_data_tvalid_1 : STD_LOGIC;
--    signal s_axis_data_tready_0, s_axis_data_tready_1 : STD_LOGIC;
--    signal m_axis_data_tvalid_0, m_axis_data_tvalid_1 : STD_LOGIC;
--    signal m_axis_data_tdata_0, m_axis_data_tdata_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
    

--    component mapeado_16QAM_I
--        port(
--            clk : IN STD_LOGIC;
--            ce, rst : IN STD_LOGIC;
--            entrada : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
--            salida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
--        );
--    end component;
    
--    component mapeado_16QAM_Q
--        port(
--            clk : IN STD_LOGIC;
--            ce, rst : IN STD_LOGIC;
--            entrada : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
--            salida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
--        );
--    end component;
    
--  component qam16_fir_compiler_0_0 is
--    port (
--            aclk : in STD_LOGIC;
--            s_axis_data_tvalid : in STD_LOGIC;
--            s_axis_data_tready : out STD_LOGIC;
--            s_axis_data_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
--            m_axis_data_tvalid : out STD_LOGIC;
--            m_axis_data_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
--    );
--    end component qam16_fir_compiler_0_0;
    
--    component qam16_fir_compiler_0_1 is
--    port (
--            aclk : in STD_LOGIC;
--            s_axis_data_tvalid : in STD_LOGIC;
--            s_axis_data_tready : out STD_LOGIC;
--            s_axis_data_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
--            m_axis_data_tvalid : out STD_LOGIC;
--            m_axis_data_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
--    );
--    end component qam16_fir_compiler_0_1;
    
    
--    constant clk_period : time := 5.208333 ns; -- Periodo de 192 MHz base para entrada y salida
--    signal cont_in : integer := 0; --contador de lectura de la señal de entrada
--    file file_handle : text;
--    file file_handle2 : text;
--    signal eof : boolean := false;


--begin
--    qam_i: mapeado_16QAM_I port map(clk=>clk, ce=>ce, rst=>rst, entrada=>entrada, salida=>salida_I);
--    qam_q: mapeado_16QAM_Q port map(clk=>clk, ce=>ce, rst=>rst, entrada=>entrada, salida=>salida_Q);
--    fir_i: qam16_fir_compiler_0_0 port map(
--            aclk=>clk, 
--            s_axis_data_tvalid=>s_axis_data_tvalid_0,
--            s_axis_data_tready=>s_axis_data_tready_0, 
--            s_axis_data_tdata=>salida_I,
--            m_axis_data_tvalid=>m_axis_data_tvalid_0, 
--            m_axis_data_tdata=>m_axis_data_tdata_0);

--    fir_q: qam16_fir_compiler_0_1 port map(
--            aclk=>clk, 
--            s_axis_data_tvalid=>s_axis_data_tvalid_1,
--            s_axis_data_tready=>s_axis_data_tready_1, 
--            s_axis_data_tdata=>salida_Q,
--            m_axis_data_tvalid=>m_axis_data_tvalid_1, 
--            m_axis_data_tdata=>m_axis_data_tdata_1);

--    clk <= not clk after clk_period/2;

--    process(clk) --192MHz
--    variable line_buffer : line;
--    variable nuevo_valor : STD_LOGIC_VECTOR(11 DOWNTO 0);
    
--    --escritura
--    variable line_num: line;
--    file outfile: text is out "C:\Users\Miguel\Downloads\QAM_output.txt";
    
--    begin
--        if rst = '1' then
--            eof <= false; --se reinicia fin de archivo
--            cont_in <= 0;
--        elsif rising_edge(clk) then
--            cont_in <= cont_in + 1;
--            if cont_in = 96 then --cada 500 ns se lee entrada (cont = 96)
--                cont_in <= 0;
--                if not eof then
--                    if endfile(file_handle) then 
--                        eof <= true; 
--                    else
--                        readline(file_handle, line_buffer);
--                        read(line_buffer, nuevo_valor);
--                        entrada <= nuevo_valor;
--                        s_axis_data_tvalid_0 <= '1'; 
--                        s_axis_data_tvalid_1 <= '1';
--                    end if;
--                end if;
--            end if; 
--            if not eof then
--                write (line_num, salida_I);
--                writeline(outfile, line_num);
--            end if;                           
--        end if;
--    end process;   

--    process
--    begin
--        file_open(file_handle, "C:\Users\Miguel\Downloads\FIFO_output.txt", READ_MODE);
        
--        --escritura
--        file_open (file_handle2, "C:\Users\Miguel\Downloads\QAM_output.txt", write_mode);
        
--        -- Initialize inputs
--        ce <= '0';
--        rst <= '1';
--        --s_axis_data_tvalid_0 <= '0';
--        --s_axis_data_tvalid_1 <= '0';

        
--        --s_axis_data_tdata_0 <= (others => '0');
--        --s_axis_data_tdata_1 <= (others => '0');
--        wait for 32*clk_period;
--        rst <= '0';
        
--        wait for 32*clk_period;
--        ce <= '1';
--        s_axis_data_tvalid_0 <= '1';
--        s_axis_data_tvalid_1 <= '1';
--        --s_axis_data_tready_0 <= '1';
--        --s_axis_data_tready_1 <= '1';
        
--        wait;
--    end process stim_proc;

--end testbench;


