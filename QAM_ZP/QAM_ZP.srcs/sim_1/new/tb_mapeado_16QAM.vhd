LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tb_mapeado_16QAM IS
END tb_mapeado_16QAM;

ARCHITECTURE testbench OF tb_mapeado_16QAM IS
    SIGNAL clk, ce, rst : STD_LOGIC := '0';
    SIGNAL entrada : STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '0');
    SIGNAL salida_I, salida_Q : STD_LOGIC_VECTOR(2 DOWNTO 0);

    COMPONENT mapeado_16QAM_I
        PORT(
            clk : IN STD_LOGIC;
            ce, rst : IN STD_LOGIC;
            entrada : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            salida_I : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    END COMPONENT;
    
    COMPONENT mapeado_16QAM_Q
        PORT(
            clk : IN STD_LOGIC;
            ce, rst : IN STD_LOGIC;
            entrada : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            salida_Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    END COMPONENT;

BEGIN
    -- Instantiate the DUT (Design Under Test)
    qam_i: mapeado_16QAM_I PORT MAP(clk, ce, rst, entrada, salida_I);
    qam_q: mapeado_16QAM_Q PORT MAP(clk, ce, rst, entrada, salida_Q);

    -- Clock generation process
   clk_process: PROCESS
    BEGIN
        while true loop
            clk <= not clk;
            wait for 166.67 ns; -- Periodo de 6 MHz (1 / 6e6)
        end loop;
    END PROCESS clk_process;

    -- Stimulus process
    stim_proc: PROCESS
    BEGIN
        -- Initialize inputs
        ce <= '0';
        rst <= '1';
        wait for 100 ns;

        -- Deassert reset
        rst <= '0';
        wait for 50 ns;

        -- Apply stimulus
        ce <= '1';
        entrada <= "111111111111";
        wait for 500 ns; 
        entrada <= "010101010101"; -- Ejemplo de entrada de 12 bits
        wait for 500 ns; --llegan a 2MHz
        entrada <= "010010010001"; 
        wait for 500 ns;
        entrada <= "111111111111";
        wait for 500 ns;
        entrada <= "010101010101"; 
        wait for 500 ns;
        entrada <= "000000000000"; 
        wait for 500 ns; 

        wait;
    END PROCESS stim_proc;

END testbench;