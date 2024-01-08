-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sun Jan  7 12:02:35 2024
-- Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Paula/Downloads/mezclador/mezclador.srcs/sources_1/bd/design_1/ip/design_1_xbip_dsp48_macro_0_1/design_1_xbip_dsp48_macro_0_1_stub.vhdl
-- Design      : design_1_xbip_dsp48_macro_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tifbg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_xbip_dsp48_macro_0_1 is
  Port ( 
    CLK : in STD_LOGIC;
    C : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CONCAT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    P : out STD_LOGIC_VECTOR ( 32 downto 0 )
  );

end design_1_xbip_dsp48_macro_0_1;

architecture stub of design_1_xbip_dsp48_macro_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,C[31:0],CONCAT[31:0],P[32:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xbip_dsp48_macro_v3_0_15,Vivado 2017.4";
begin
end;
