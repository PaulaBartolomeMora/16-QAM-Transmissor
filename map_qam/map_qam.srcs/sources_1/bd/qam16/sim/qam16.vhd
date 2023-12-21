--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Thu Dec 21 09:25:19 2023
--Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
--Command     : generate_target qam16.bd
--Design      : qam16
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity qam16 is
  port (
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axis_data_tdata_0 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tdata_1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tvalid_0 : out STD_LOGIC;
    m_axis_data_tvalid_1 : out STD_LOGIC;
    rst_0 : in STD_LOGIC;
    s_axis_data_tready_0 : out STD_LOGIC;
    s_axis_data_tready_1 : out STD_LOGIC;
    s_axis_data_tvalid_0 : in STD_LOGIC;
    s_axis_data_tvalid_1 : in STD_LOGIC;
    salida_I : out STD_LOGIC_VECTOR ( 7 downto 0 );
    salida_Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of qam16 : entity is "qam16,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=qam16,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=8,da_clkrst_cnt=3,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of qam16 : entity is "qam16.hwdef";
end qam16;

architecture STRUCTURE of qam16 is
  component qam16_fir_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component qam16_fir_compiler_0_0;
  component qam16_fir_compiler_0_1 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component qam16_fir_compiler_0_1;
  component qam16_mapeado_16QAM_I_0_0 is
  port (
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    rst : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 11 downto 0 );
    salida : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component qam16_mapeado_16QAM_I_0_0;
  component qam16_mapeado_16QAM_Q_0_0 is
  port (
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    rst : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 11 downto 0 );
    salida : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component qam16_mapeado_16QAM_Q_0_0;
  signal ce_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal entrada_1_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fir_compiler_I_m_axis_data_tdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal fir_compiler_I_m_axis_data_tvalid : STD_LOGIC;
  signal fir_compiler_I_s_axis_data_tready : STD_LOGIC;
  signal fir_compiler_Q_m_axis_data_tdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal fir_compiler_Q_m_axis_data_tvalid : STD_LOGIC;
  signal fir_compiler_Q_s_axis_data_tready : STD_LOGIC;
  signal mapeado_16QAM_I_0_salida : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mapeado_16QAM_Q_0_salida : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rst_0_1 : STD_LOGIC;
  signal s_axis_data_tvalid_0_1 : STD_LOGIC;
  signal s_axis_data_tvalid_1_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst_0, CLK_DOMAIN qam16_clk, FREQ_HZ 192000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute X_INTERFACE_PARAMETER of rst_0 : signal is "XIL_INTERFACENAME RST.RST_0, POLARITY ACTIVE_LOW";
begin
  ce_1 <= ce;
  clk_1 <= clk;
  entrada_1_1(11 downto 0) <= entrada(11 downto 0);
  m_axis_data_tdata_0(23 downto 0) <= fir_compiler_I_m_axis_data_tdata(23 downto 0);
  m_axis_data_tdata_1(23 downto 0) <= fir_compiler_Q_m_axis_data_tdata(23 downto 0);
  m_axis_data_tvalid_0 <= fir_compiler_I_m_axis_data_tvalid;
  m_axis_data_tvalid_1 <= fir_compiler_Q_m_axis_data_tvalid;
  rst_0_1 <= rst_0;
  s_axis_data_tready_0 <= fir_compiler_I_s_axis_data_tready;
  s_axis_data_tready_1 <= fir_compiler_Q_s_axis_data_tready;
  s_axis_data_tvalid_0_1 <= s_axis_data_tvalid_0;
  s_axis_data_tvalid_1_1 <= s_axis_data_tvalid_1;
  salida_I(7 downto 0) <= mapeado_16QAM_I_0_salida(7 downto 0);
  salida_Q(7 downto 0) <= mapeado_16QAM_Q_0_salida(7 downto 0);
fir_compiler_I: component qam16_fir_compiler_0_0
     port map (
      aclk => clk_1,
      m_axis_data_tdata(23 downto 0) => fir_compiler_I_m_axis_data_tdata(23 downto 0),
      m_axis_data_tvalid => fir_compiler_I_m_axis_data_tvalid,
      s_axis_data_tdata(7 downto 0) => mapeado_16QAM_I_0_salida(7 downto 0),
      s_axis_data_tready => fir_compiler_I_s_axis_data_tready,
      s_axis_data_tvalid => s_axis_data_tvalid_1_1
    );
fir_compiler_Q: component qam16_fir_compiler_0_1
     port map (
      aclk => clk_1,
      m_axis_data_tdata(23 downto 0) => fir_compiler_Q_m_axis_data_tdata(23 downto 0),
      m_axis_data_tvalid => fir_compiler_Q_m_axis_data_tvalid,
      s_axis_data_tdata(7 downto 0) => mapeado_16QAM_Q_0_salida(7 downto 0),
      s_axis_data_tready => fir_compiler_Q_s_axis_data_tready,
      s_axis_data_tvalid => s_axis_data_tvalid_0_1
    );
mapeado_16QAM_I_0: component qam16_mapeado_16QAM_I_0_0
     port map (
      ce => ce_1,
      clk => clk_1,
      entrada(11 downto 0) => entrada_1_1(11 downto 0),
      rst => rst_0_1,
      salida(7 downto 0) => mapeado_16QAM_I_0_salida(7 downto 0)
    );
mapeado_16QAM_Q_0: component qam16_mapeado_16QAM_Q_0_0
     port map (
      ce => ce_1,
      clk => clk_1,
      entrada(11 downto 0) => entrada_1_1(11 downto 0),
      rst => rst_0_1,
      salida(7 downto 0) => mapeado_16QAM_Q_0_salida(7 downto 0)
    );
end STRUCTURE;
