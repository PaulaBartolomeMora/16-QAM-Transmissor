library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;

entity tb_mezclador is
end tb_mezclador;

architecture tb of tb_mezclador is

    component design_1 is
      port (
          M_AXIS_PHASE_0_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
          M_AXIS_PHASE_0_tvalid : out STD_LOGIC;
          Salida_RRC_I : in STD_LOGIC_VECTOR ( 23 downto 0 );
          Salida_RRC_Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
          TX_I : out STD_LOGIC_VECTOR ( 34 downto 0 );
          TX_Q : out STD_LOGIC_VECTOR ( 34 downto 0 );
          clk : in STD_LOGIC;
          coseno : out STD_LOGIC_VECTOR ( 10 downto 0 );
          m_axis_data_tdata_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
          m_axis_data_tvalid_0 : out STD_LOGIC;
          rst : in STD_LOGIC;
          seno : out STD_LOGIC_VECTOR ( 10 downto 0 )
        );
    end component;

    --DDS
    signal m_axis_data_tdata_0   : std_logic_vector (31 downto 0 );
    signal m_axis_data_tvalid_0  : std_logic;
    signal M_AXIS_PHASE_0_tdata  : std_logic_vector (15 downto 0 );
    signal M_AXIS_PHASE_0_tvalid : std_logic;
    signal clk                   : std_logic;
    signal rst                   : std_logic;
    
    --MULT
    signal Salida_RRC_I, Salida_RRC_Q  : std_logic_vector (23 downto 0 );
    signal TX_I, TX_Q  : std_logic_vector (34 downto 0 );
    signal coseno, seno : std_logic_vector (10 downto 0 );

    constant TbPeriod : time := 5.208333 ns; -- Periodo de 192 MHz base para entrada y salida
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';
    
    signal eof : boolean := false;
    file file_handle : text;
    

begin

    dut : design_1
     port map (
         M_AXIS_PHASE_0_tdata(15 downto 0) => M_AXIS_PHASE_0_tdata(15 downto 0),
         M_AXIS_PHASE_0_tvalid => M_AXIS_PHASE_0_tvalid,
         Salida_RRC_I(23 downto 0) => Salida_RRC_I(23 downto 0),
         Salida_RRC_Q(23 downto 0) => Salida_RRC_Q(23 downto 0),
         TX_I(34 downto 0) => TX_I(34 downto 0),
         TX_Q(34 downto 0) => TX_Q(34 downto 0),
         clk => clk,
         coseno(10 downto 0) => coseno(10 downto 0),
         m_axis_data_tdata_0(31 downto 0) => m_axis_data_tdata_0(31 downto 0),
         m_axis_data_tvalid_0 => m_axis_data_tvalid_0,
         rst => rst,
         seno(10 downto 0) => seno(10 downto 0)
       );

    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';
    clk <= TbClock;
    
--    process(clk) --192MHz
--        --lectura datos salidas filtros
--      variable line_buffer : line;
--        variable nuevo_valor : STD_LOGIC_VECTOR(23 DOWNTO 0);
       
--        begin
--            if rst = '1' then
--                eof <= false; --se reinicia fin de archivo
--            elsif rising_edge(clk) then
--                if not eof then
--                    if endfile(file_handle) then 
--                        eof <= true; 
--                    else
--                        readline(file_handle, line_buffer);
--                        read(line_buffer, nuevo_valor);
--                        Salida_RRC_I <= nuevo_valor;
--                    end if;
--                end if;
--            end if;    
--        end process;   
    

    stimuli : process
    begin
        --file_open(file_handle, ".\FIR_output_I.txt", READ_MODE);
        
        rst <= '0'; -- negativo
        wait for 100 ns;
        rst <= '1';
        wait for 100 ns;


        wait for 100 * TbPeriod;

        --TbSimEnded <= '1';
        wait;
    end process;

end tb;
