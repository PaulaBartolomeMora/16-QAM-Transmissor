library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity zp is
    port(
        clk : IN STD_LOGIC;
        contador_out : OUT INTEGER;
        in_I, in_Q : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        out_I, out_Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
end zp;

architecture Behavioral of zp is
    
begin
    process(clk) 
        variable contador : integer := 0; 
        variable reg0_I, reg1_I, reg2_I : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
        variable reg0_Q, reg1_Q, reg2_Q : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
    begin
        if rising_edge(clk) then
            contador_out <= contador;
            if contador = 32 then --cada 166,67 ns se saca salida (cont = 32)     
                contador := 0; 
                reg2_I := in_I;
                reg1_I := reg2_I;
                reg0_I := reg1_I;
                out_I <= reg0_I;
                
                reg2_Q := in_Q;
                reg1_Q := reg2_Q;
                reg0_Q := reg1_Q;
                out_Q <= reg0_Q;
            else --se aplica zero padding
                contador := contador + 1; 
                out_I <= "000";
                out_Q <= "000";
            end if;
        end if;
    end process; 
end Behavioral;