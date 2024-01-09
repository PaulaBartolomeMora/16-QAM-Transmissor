--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Tue Jan  9 11:31:46 2024
--Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    clk_out1_0 : out STD_LOGIC;
    clk_out2_0 : out STD_LOGIC;
    clk_out3_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_sim_clk_gen_0_0 is
  port (
    clk : out STD_LOGIC;
    sync_rst : out STD_LOGIC
  );
  end component design_1_sim_clk_gen_0_0;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_clk_out3 : STD_LOGIC;
  signal sim_clk_gen_0_clk : STD_LOGIC;
  signal sim_clk_gen_0_sync_rst : STD_LOGIC;
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_out1_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_out1_0 : signal is "XIL_INTERFACENAME CLK.CLK_OUT1_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 576000000, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_out2_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_OUT2_0 CLK";
  attribute X_INTERFACE_PARAMETER of clk_out2_0 : signal is "XIL_INTERFACENAME CLK.CLK_OUT2_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 192000000, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_out3_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_OUT3_0 CLK";
  attribute X_INTERFACE_PARAMETER of clk_out3_0 : signal is "XIL_INTERFACENAME CLK.CLK_OUT3_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 52363636, PHASE 0.0";
begin
  clk_out1_0 <= clk_wiz_0_clk_out1;
  clk_out2_0 <= clk_wiz_0_clk_out2;
  clk_out3_0 <= clk_wiz_0_clk_out3;
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => sim_clk_gen_0_clk,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      clk_out3 => clk_wiz_0_clk_out3,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => sim_clk_gen_0_sync_rst
    );
sim_clk_gen_0: component design_1_sim_clk_gen_0_0
     port map (
      clk => sim_clk_gen_0_clk,
      sync_rst => sim_clk_gen_0_sync_rst
    );
end STRUCTURE;
