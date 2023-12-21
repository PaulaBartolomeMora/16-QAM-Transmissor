-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Dec 21 09:21:56 2023
-- Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {C:/Users/Paula/OneDrive - Universidad de
--               Alcala/Todo/map_qam_enviado/map_qam.srcs/sources_1/bd/qam16/ip/qam16_mapeado_16QAM_I_0_0/qam16_mapeado_16QAM_I_0_0_stub.vhdl}
-- Design      : qam16_mapeado_16QAM_I_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbg484-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity qam16_mapeado_16QAM_I_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    rst : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 11 downto 0 );
    salida : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end qam16_mapeado_16QAM_I_0_0;

architecture stub of qam16_mapeado_16QAM_I_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,ce,rst,entrada[11:0],salida[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mapeado_16QAM_I,Vivado 2017.4";
begin
end;
