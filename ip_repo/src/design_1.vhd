--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Sun Dec  3 16:43:57 2023
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
    aclk_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_fir_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  end component design_1_fir_compiler_0_0;
  signal aclk_0_1 : STD_LOGIC;
  signal NLW_fir_compiler_0_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler_0_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler_0_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 55 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_0 : signal is "XIL_INTERFACENAME CLK.ACLK_0, CLK_DOMAIN design_1_aclk_0, FREQ_HZ 192000000, PHASE 0.000";
begin
  aclk_0_1 <= aclk_0;
fir_compiler_0: component design_1_fir_compiler_0_0
     port map (
      aclk => aclk_0_1,
      m_axis_data_tdata(55 downto 0) => NLW_fir_compiler_0_m_axis_data_tdata_UNCONNECTED(55 downto 0),
      m_axis_data_tvalid => NLW_fir_compiler_0_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_data_tready => NLW_fir_compiler_0_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => '0'
    );
end STRUCTURE;
