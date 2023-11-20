library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;

entity tb_mapeado_16QAM IS
end tb_mapeado_16QAM;

architecture testbench of tb_mapeado_16QAM is
    signal clk, ce, rst : STD_LOGIC := '0';
    signal entrada : STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '0');
    signal salida_I, salida_Q : STD_LOGIC_VECTOR(2 DOWNTO 0);

    component mapeado_16QAM_I
        port(
            clk : IN STD_LOGIC;
            ce, rst : IN STD_LOGIC;
            entrada : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            salida : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    end component;
    
    component mapeado_16QAM_Q
        port(
            clk : IN STD_LOGIC;
            ce, rst : IN STD_LOGIC;
            entrada : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            salida : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    end component;
    
    constant clk_period : time := 5.208333 ns; -- Periodo de 192 MHz base para entrada y salida
    signal cont_in, cont_out : integer := 0;
    file file_handle : text;
    signal eof : boolean := false;


begin
    -- Instantiate the DUT (Design Under Test)
    qam_i: mapeado_16QAM_I port map(clk=>clk, ce=>ce, rst=>rst, entrada=>entrada, salida=>salida_I);
    qam_q: mapeado_16QAM_Q port map(clk=>clk, ce=>ce, rst=>rst, entrada=>entrada, salida=>salida_Q);

    clk <= not clk after clk_period/2;

    process(clk)
    variable line_buffer : line;
    variable nuevo_valor : STD_LOGIC_VECTOR(11 DOWNTO 0);
    begin
        if rst = '1' then
            eof <= false; --se reinicia fin de archivo
            cont_in <= 0;
            cont_out <= 0;
        elsif rising_edge(clk) then
            cont_in <= cont_in + 1;
            cont_out <= cont_out + 1;
            if cont_in = 96 then --cada 500 ns se lee entrada (cont = 96)
                cont_in <= 0;
                if not eof then
                    if endfile(file_handle) then eof <= true; 
                    else
                        readline(file_handle, line_buffer);
                        read(line_buffer, nuevo_valor);
                        entrada <= nuevo_valor;
                    end if;
                end if;
            end if;
            if cont_out = 32 then --cada 166,67 ns se saca salida (cont = 32)
                cont_out <= 0;                 
            end if; 
        end if;
    end process;   

    process
    begin
        file_open(file_handle, "C:\Users\Paula\Downloads\map_qam\FIFO_output.txt", READ_MODE);
        -- Initialize inputs
        ce <= '0';
        rst <= '1';
        wait for 20*clk_period;
        rst <= '0';
        wait for 20*clk_period;

        ce <= '1';
--        entrada <= "111111111111";
--        wait for 500 ns; 
--        entrada <= "010101010101"; -- Ejemplo de entrada de 12 bits
--        wait for 500 ns; --llegan a 2MHz
--        entrada <= "010010010001"; 
--        wait for 500 ns;
--        entrada <= "111111111111";
--        wait for 500 ns;
--        entrada <= "010101010101"; 
--        wait for 500 ns;
--        entrada <= "000000000000"; 
--        wait for 500 ns; 

        wait;
    end process stim_proc;

end testbench;
