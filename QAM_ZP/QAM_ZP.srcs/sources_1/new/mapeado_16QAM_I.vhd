library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mapeado_16QAM_I is
    Port (
        clk : in STD_LOGIC; -- Entrada de reloj a 78 MHz
        ce, rst : in STD_LOGIC; -- Entrada de reset síncrono y clock_enable (1 de 32)
        entrada : in STD_LOGIC_VECTOR(11 downto 0); -- Señal entrada 12 bits se mantiene 3 ciclos
        salida : out STD_LOGIC_VECTOR(2 downto 0) -- Salida de (-3,-1,1,3) en 3 bits ) 
    ); 
end mapeado_16QAM_I;

architecture Behavioral of mapeado_16QAM_I is
    type Array3Bit is array (0 to 15) of STD_LOGIC_VECTOR(2 downto 0);
    constant tabla_mapeado_I: Array3Bit := (
        "000", "001", "010", "011",
        "100", "101", "110", "111",
        "000", "001", "010", "011",
        "100", "101", "110", "111"
    );
    
begin
    process(clk) 
        variable contador : integer := 0; -- 0 1 2 => 4*contador+3 downto 4*contador
        variable captured_bits : std_logic_vector(3 downto 0) := "0000";
    begin
        if rising_edge(clk) = '1' then
            if rst = '1' then
                contador := 0; 
                salida <= "000"; 
            end if;
        else
            captured_bits := entrada(4*contador+3 downto 4*contador);
            salida <= tabla_mapeado_I(captured_bits); 
        contador := contador + 1; -- variable que tras el reset 0, 1 , 2
        if contador = 3 then contador := 0; 
        end if; 
    
    end process; 
end Behavioral;
