--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Tue Jan  9 11:31:46 2024
--Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    clk_out1_0 : out STD_LOGIC;
    clk_out2_0 : out STD_LOGIC;
    clk_out3_0 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk_out1_0 : out STD_LOGIC;
    clk_out2_0 : out STD_LOGIC;
    clk_out3_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      clk_out1_0 => clk_out1_0,
      clk_out2_0 => clk_out2_0,
      clk_out3_0 => clk_out3_0
    );
end STRUCTURE;
