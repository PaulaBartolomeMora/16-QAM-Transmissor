library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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
    constant tabla_mapeado_I: Array3Bit := --codificación gray
        ("000", "000", "001", "001", 
         "011", "011", "010", "010",
         "110", "110", "111", "111", 
         "101", "101", "100", "100");
    
begin
    process(clk) 
        variable contador : integer := 0; -- 0 1 2 => 4*contador+3 downto 4*contador
        variable cont_32 : integer := 0; -- 6MHz
        variable captured_bits : std_logic_vector(3 downto 0) := "0000";
    begin
        if rising_edge(clk) then
        if rst = '1' then
            contador := 0; 
            cont_32 := 0; 
            salida <= "000"; 
        else
            if cont_32 = 32 then 
                cont_32 := 0;
                captured_bits := entrada(4*contador+3 downto 4*contador);
                salida <= tabla_mapeado_I(to_integer(unsigned(captured_bits))); 
                contador := contador + 1; -- variable que tras el reset 0, 1 , 2
                if contador = 3 then 
                    contador := 0; 
                end if;
            else
                cont_32 := cont_32 + 1;
                salida <= "000";
            end if;
        end if;
    end if;         
    end process; 
end Behavioral;