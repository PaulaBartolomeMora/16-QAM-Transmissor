
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_TEXTIO.all;
use STD.TEXTIO.all;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity prueba_xadc_tb is
end prueba_xadc_tb;

architecture Behavioral of prueba_xadc_tb is

    component design_1
        port (
            --XADC
            Vp_Vn_0_v_n : in STD_LOGIC;
            Vp_Vn_0_v_p : in STD_LOGIC;
            alarm_out_0 : out STD_LOGIC;
            busy_out_0 : out STD_LOGIC;
            channel_out_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
            dclk_in_0 : in STD_LOGIC;
            eoc_out_0 : out STD_LOGIC;
            eos_out_0 : out STD_LOGIC;
            ot_out_0 : out STD_LOGIC;
            reset_in_0 : in STD_LOGIC;
            s_drp_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
            s_drp_0_den : in STD_LOGIC;
            s_drp_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
            do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
            s_drp_0_drdy : out STD_LOGIC;
            s_drp_0_dwe : in STD_LOGIC;  
            --SLICE           
            slice_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
            --FIFO
            almost_full : out STD_LOGIC;
            empty : out STD_LOGIC;
            full : out STD_LOGIC;
            rd_clk : in STD_LOGIC;
            rd_en : in STD_LOGIC;
            rd_rst_busy : out STD_LOGIC;
            wr_clk : in STD_LOGIC;
            wr_en : in STD_LOGIC;
            wr_rst_busy : out STD_LOGIC;
            prog_full : out STD_LOGIC;
            rd_data_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
            wr_data_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
            FIFO_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
          );    
    end component;
    

    --XADC
    signal Vp_Vn_0_v_n: STD_LOGIC :='0';
    signal Vp_Vn_0_v_p: STD_LOGIC :='0';
    signal alarm_out_0: STD_LOGIC;
    signal busy_out_0: STD_LOGIC;
    signal channel_out_0: STD_LOGIC_VECTOR ( 4 downto 0 );
    signal dclk_in_0: STD_LOGIC := '0';
    signal eoc_out_0: STD_LOGIC;
    signal eos_out_0: STD_LOGIC;
    signal ot_out_0: STD_LOGIC;
    signal s_drp_0_daddr: STD_LOGIC_VECTOR ( 6 downto 0 );
    signal s_drp_0_den: STD_LOGIC;
    signal s_drp_0_di: STD_LOGIC_VECTOR ( 15 downto 0 );
    signal do_out: STD_LOGIC_VECTOR ( 15 downto 0 );
    signal s_drp_0_drdy: STD_LOGIC;
    signal s_drp_0_dwe: STD_LOGIC;
    
    --SLICE
    signal slice_out: STD_LOGIC_VECTOR  ( 11 downto 0 );
    
    --FIFO
    signal almost_full: STD_LOGIC;
    signal empty: STD_LOGIC;
    signal full: STD_LOGIC;
    signal rd_clk: STD_LOGIC :='0';
    signal rd_en: STD_LOGIC;
    signal rd_rst_busy: STD_LOGIC;
    signal wr_clk: STD_LOGIC :='0';
    signal wr_en: STD_LOGIC;
    signal wr_rst_busy: STD_LOGIC;
    signal FIFO_out: STD_LOGIC_VECTOR ( 11 downto 0 );
    signal prog_full: STD_LOGIC;
    signal rd_data_count : STD_LOGIC_VECTOR ( 7 downto 0 );
    signal wr_data_count : STD_LOGIC_VECTOR ( 7 downto 0 );
    
    --RESET y CLKs
    signal reset_in_0: STD_LOGIC; -- reset XADC y FIFO 
    constant clk_period : time := 19.23 ns; -- 52 MHz XADC
    constant rd_clk_period : time := 500 ns; -- 2 MHz READ FIFO
    constant wr_clk_period : time := 19.23 ns; -- 52 MHz WRITE FIFO
    
begin

    uut: design_1 port map ( Vp_Vn_0_v_n           => Vp_Vn_0_v_n,
                           Vp_Vn_0_v_p           => Vp_Vn_0_v_p,
                           alarm_out_0           => alarm_out_0,
                           busy_out_0            => busy_out_0,
                           channel_out_0         => channel_out_0,
                           dclk_in_0             => dclk_in_0,
                           eoc_out_0             => eoc_out_0,
                           eos_out_0             => eos_out_0,
                           ot_out_0              => ot_out_0,
                           reset_in_0            => reset_in_0,
                           s_drp_0_daddr         => s_drp_0_daddr,
                           s_drp_0_den           => s_drp_0_den,
                           s_drp_0_di            => s_drp_0_di,
                           do_out                => do_out,
                           s_drp_0_drdy          => s_drp_0_drdy,
                           s_drp_0_dwe           => s_drp_0_dwe,
                           slice_out             => slice_out,                           
                           almost_full           => almost_full, 
                           empty                 => empty, 
                           full                  => full,
                           rd_clk                => rd_clk,
                           rd_en                 => rd_en,
                           rd_rst_busy           => rd_rst_busy, 
                           wr_clk                => wr_clk,
                           wr_en                 => wr_en,
                           wr_rst_busy           => wr_rst_busy,
                           prog_full             => prog_full,
                           FIFO_out              => FIFO_out,
                           rd_data_count         => rd_data_count,
                           wr_data_count         => wr_data_count                 
                           );

    ------------------------------------------------------------------------------------------------------------------------------------------------

    -- Write enable for the dynamic reconfiguration port, solo leer datos convertidos no escribir
    s_drp_0_dwe <= '0'; 
    
    dclk_in_0 <=  not dclk_in_0 after clk_period/2;  
    rd_clk <=  not rd_clk after rd_clk_period/2; 
    wr_clk <=  not wr_clk after wr_clk_period/2;  
    
    ------------------------------------------------------------------------------------------------------------------------------------------------
    
    process(wr_clk) -- proceso de escritura FIFO
        variable reg : std_logic; -- variable aux para guardar dato de salida del xadc
    begin
        if rising_edge(wr_clk) then
            if reset_in_0 = '1' then -- reset XADC = 1
                reg := '0';
                s_drp_0_den <= '0'; -- Enable signal for the dynamic reconfiguration port, no hay datos ready para leer
            else
                s_drp_0_den <= reg ; -- s_drp_0_den <= eoc_out, ENABLE = 1 solo durante un ciclo
                reg := eoc_out_0; -- Cuando termina la conversión se habilita la salida de un nuevo dato 
            end if;
        end if;
    end process;  
    
    wr_en <= s_drp_0_drdy; -- se escribe en la FIFO nuevo dato
    
    ------------------------------------------------------------------------------------------------------------------------------------------------

    
    process(rd_clk) -- proceso de lectura FIFO
    file outfile: text is out "C:\Users\pbartolome\Downloads\FIFO_XADC\FIFO_output.txt";
    variable line_num: line;
    variable opened, finished: std_logic := '0'; --indica si se ha comenzado a escribir en el fichero de salida
    begin
        file_open (outfile, "C:\Users\pbartolome\Downloads\FIFO_XADC\FIFO_output.txt", write_mode);
        if rising_edge(rd_clk) then
            if reset_in_0 = '1' then -- reset XADC = 1
                rd_en <= '0';
            else
                if prog_full = '1' then --se comenzará a leer la FIFO cuando se activa programmable full, equivalente a full cuando queremos determinar cuantos datos guardamos en la FIFO. con almost_full se leerían hasta 256 (255)
                    rd_en <= '1';
                end if;                
                if empty = '1' then  
                    rd_en <= '0';
                end if;
                if rd_en = '1' and finished = '0' then --proceso de escritura del .txt
                    write (line_num, FIFO_out);
                    writeline(outfile, line_num);
                    opened := '1';
                end if;
                if opened = '1' and empty = '1' then --primera escritura: se finaliza escritura de .txt tras el primer empty
                    finished := '1';
                end if;
            end if;
        end if;
    end process;   
    
    ------------------------------------------------------------------------------------------------------------------------------------------------
     
    stimulus: process
    begin
        reset_in_0 <= '1';  -- reset activo
        wait for 200 ns;
        reset_in_0 <= '0';  -- reset inactivo
         
        -- Address bus for the dynamic reconfiguration port, registro con el valor convertido de VpVn, canal 3
        s_drp_0_daddr <= std_logic_vector(to_unsigned(3, s_drp_0_daddr'length)); 
          
        -- Input data bus for the dynamic reconfiguration port (DRP) 
        s_drp_0_di <= (others =>'0');
        
        wait until dclk_in_0 = '0'; -- sincroniza en flanco de bajada
         
        -- frec. conversion aprox 1MS -> frec 52 KHz (modo continuo)
        for i in 0 to 200 -- a la espera de 200 datos 
        loop     
            wait until eoc_out_0 <= '1' ; -- End of Conversion signal 
            -- Data ready signal for the dynamic reconfiguration port, se espera a que esté disponible el dato
            wait until s_drp_0_drdy = '1';  
        end loop;
        
        assert false
        report "Fin simulacion"
        severity failure;

        wait;    
    end process;
end Behavioral;
