--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Sun Jan  7 13:50:08 2024
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
    M_AXIS_PHASE_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_PHASE_0_tvalid : out STD_LOGIC;
    Salida_RRC_I : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Salida_RRC_Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    TX_I : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TX_Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    antena : out STD_LOGIC_VECTOR ( 32 downto 0 );
    clk : in STD_LOGIC;
    coseno : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid_0 : out STD_LOGIC;
    rst : in STD_LOGIC;
    seno : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_dds_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_phase_tvalid : out STD_LOGIC;
    m_axis_phase_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_dds_compiler_0_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlslice_0_1;
  component design_1_xbip_dsp48_macro_0_1 is
  port (
    CLK : in STD_LOGIC;
    C : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CONCAT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    P : out STD_LOGIC_VECTOR ( 32 downto 0 )
  );
  end component design_1_xbip_dsp48_macro_0_1;
  component design_1_mult_gen_0_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_mult_gen_0_0;
  component design_1_mult_gen_0_1 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_mult_gen_0_1;
  signal A_0_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal A_0_2 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal aclk_0_1 : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
  signal coseno_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dds_compiler_0_M_AXIS_PHASE_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dds_compiler_0_M_AXIS_PHASE_TVALID : STD_LOGIC;
  signal dds_compiler_0_m_axis_data_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dds_compiler_0_m_axis_data_tvalid : STD_LOGIC;
  signal seno_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sumador_P : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal xbip_dsp48_macro_0_P : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbip_dsp48_macro_1_P : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_PHASE_0_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_PHASE_0 TVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF M_AXIS_PHASE_0, ASSOCIATED_RESET rst, CLK_DOMAIN design_1_clk, FREQ_HZ 192000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of M_AXIS_PHASE_0_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_PHASE_0 TDATA";
  attribute X_INTERFACE_PARAMETER of M_AXIS_PHASE_0_tdata : signal is "XIL_INTERFACENAME M_AXIS_PHASE_0, CLK_DOMAIN design_1_clk, FREQ_HZ 192000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_phase_out {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value phase_out} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency phase_width format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency phase_fractwidth format long minimum {} maximum {}} value 30} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of Salida_RRC_I : signal is "xilinx.com:signal:data:1.0 DATA.SALIDA_RRC_I DATA";
  attribute X_INTERFACE_PARAMETER of Salida_RRC_I : signal is "XIL_INTERFACENAME DATA.SALIDA_RRC_I, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of Salida_RRC_Q : signal is "xilinx.com:signal:data:1.0 DATA.SALIDA_RRC_Q DATA";
  attribute X_INTERFACE_PARAMETER of Salida_RRC_Q : signal is "XIL_INTERFACENAME DATA.SALIDA_RRC_Q, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TX_I : signal is "xilinx.com:signal:data:1.0 DATA.TX_I DATA";
  attribute X_INTERFACE_PARAMETER of TX_I : signal is "XIL_INTERFACENAME DATA.TX_I, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}";
  attribute X_INTERFACE_INFO of TX_Q : signal is "xilinx.com:signal:data:1.0 DATA.TX_Q DATA";
  attribute X_INTERFACE_PARAMETER of TX_Q : signal is "XIL_INTERFACENAME DATA.TX_Q, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}";
  attribute X_INTERFACE_INFO of antena : signal is "xilinx.com:signal:data:1.0 DATA.ANTENA DATA";
  attribute X_INTERFACE_PARAMETER of antena : signal is "XIL_INTERFACENAME DATA.ANTENA, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} DATA_WIDTH 33}";
begin
  A_0_1(23 downto 0) <= Salida_RRC_I(23 downto 0);
  A_0_2(23 downto 0) <= Salida_RRC_Q(23 downto 0);
  M_AXIS_PHASE_0_tdata(31 downto 0) <= dds_compiler_0_M_AXIS_PHASE_TDATA(31 downto 0);
  M_AXIS_PHASE_0_tvalid <= dds_compiler_0_M_AXIS_PHASE_TVALID;
  TX_I(31 downto 0) <= xbip_dsp48_macro_0_P(31 downto 0);
  TX_Q(31 downto 0) <= xbip_dsp48_macro_1_P(31 downto 0);
  aclk_0_1 <= clk;
  antena(32 downto 0) <= sumador_P(32 downto 0);
  aresetn_0_1 <= rst;
  coseno(7 downto 0) <= coseno_Dout(7 downto 0);
  m_axis_data_tdata_0(15 downto 0) <= dds_compiler_0_m_axis_data_tdata(15 downto 0);
  m_axis_data_tvalid_0 <= dds_compiler_0_m_axis_data_tvalid;
  seno(7 downto 0) <= seno_Dout(7 downto 0);
coseno_RnM: component design_1_xlslice_0_1
     port map (
      Din(15 downto 0) => dds_compiler_0_m_axis_data_tdata(15 downto 0),
      Dout(7 downto 0) => coseno_Dout(7 downto 0)
    );
dds_compiler_0: component design_1_dds_compiler_0_0
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
      m_axis_data_tdata(15 downto 0) => dds_compiler_0_m_axis_data_tdata(15 downto 0),
      m_axis_data_tvalid => dds_compiler_0_m_axis_data_tvalid,
      m_axis_phase_tdata(31 downto 0) => dds_compiler_0_M_AXIS_PHASE_TDATA(31 downto 0),
      m_axis_phase_tvalid => dds_compiler_0_M_AXIS_PHASE_TVALID
    );
mult_gen_0: component design_1_mult_gen_0_0
     port map (
      A(23 downto 0) => A_0_1(23 downto 0),
      B(7 downto 0) => coseno_Dout(7 downto 0),
      CLK => aclk_0_1,
      P(31 downto 0) => xbip_dsp48_macro_0_P(31 downto 0)
    );
mult_gen_1: component design_1_mult_gen_0_1
     port map (
      A(23 downto 0) => A_0_2(23 downto 0),
      B(7 downto 0) => seno_Dout(7 downto 0),
      CLK => aclk_0_1,
      P(31 downto 0) => xbip_dsp48_macro_1_P(31 downto 0)
    );
seno_RnM: component design_1_xlslice_0_0
     port map (
      Din(15 downto 0) => dds_compiler_0_m_axis_data_tdata(15 downto 0),
      Dout(7 downto 0) => seno_Dout(7 downto 0)
    );
sumador: component design_1_xbip_dsp48_macro_0_1
     port map (
      C(31 downto 0) => xbip_dsp48_macro_0_P(31 downto 0),
      CLK => aclk_0_1,
      CONCAT(31 downto 0) => xbip_dsp48_macro_1_P(31 downto 0),
      P(32 downto 0) => sumador_P(32 downto 0)
    );
end STRUCTURE;
