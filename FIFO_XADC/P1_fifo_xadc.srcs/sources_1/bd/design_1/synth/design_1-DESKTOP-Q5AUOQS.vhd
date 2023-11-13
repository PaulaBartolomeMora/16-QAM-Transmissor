--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Thu Nov  9 11:15:55 2023
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
    FIFO_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Vp_Vn_0_v_n : in STD_LOGIC;
    Vp_Vn_0_v_p : in STD_LOGIC;
    alarm_out_0 : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    busy_out_0 : out STD_LOGIC;
    channel_out_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    dclk_in_0 : in STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    empty : out STD_LOGIC;
    eoc_out_0 : out STD_LOGIC;
    eos_out_0 : out STD_LOGIC;
    full : out STD_LOGIC;
    ot_out_0 : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    reset_in_0 : in STD_LOGIC;
    s_drp_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_drp_0_den : in STD_LOGIC;
    s_drp_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_drdy : out STD_LOGIC;
    s_drp_0_dwe : in STD_LOGIC;
    slice_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_rst_busy : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xadc_wiz_0_0 is
  port (
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    den_in : in STD_LOGIC;
    dwe_in : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dclk_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    ot_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component design_1_xadc_wiz_0_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    empty : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component design_1_fifo_generator_0_0;
  signal Vp_Vn_0_1_V_N : STD_LOGIC;
  signal Vp_Vn_0_1_V_P : STD_LOGIC;
  signal dclk_in_0_1 : STD_LOGIC;
  signal fifo_generator_0_almost_full : STD_LOGIC;
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal fifo_generator_0_rd_rst_busy : STD_LOGIC;
  signal fifo_generator_0_wr_rst_busy : STD_LOGIC;
  signal rd_clk_1 : STD_LOGIC;
  signal rd_en_1 : STD_LOGIC;
  signal reset_in_0_1 : STD_LOGIC;
  signal s_drp_0_1_DADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal s_drp_0_1_DEN : STD_LOGIC;
  signal s_drp_0_1_DI : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_drp_0_1_DRDY : STD_LOGIC;
  signal s_drp_0_1_DWE : STD_LOGIC;
  signal wr_clk_1 : STD_LOGIC;
  signal wr_en_1 : STD_LOGIC;
  signal xadc_wiz_0_alarm_out : STD_LOGIC;
  signal xadc_wiz_0_busy_out : STD_LOGIC;
  signal xadc_wiz_0_channel_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xadc_wiz_0_do_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xadc_wiz_0_eoc_out : STD_LOGIC;
  signal xadc_wiz_0_eos_out : STD_LOGIC;
  signal xadc_wiz_0_ot_out : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_fifo_generator_0_prog_full_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Vp_Vn_0_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn_0 V_N";
  attribute X_INTERFACE_INFO of Vp_Vn_0_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn_0 V_P";
  attribute X_INTERFACE_INFO of dclk_in_0 : signal is "xilinx.com:signal:clock:1.0 CLK.DCLK_IN_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dclk_in_0 : signal is "XIL_INTERFACENAME CLK.DCLK_IN_0, CLK_DOMAIN design_1_dclk_in_0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of rd_clk : signal is "xilinx.com:signal:clock:1.0 CLK.RD_CLK CLK";
  attribute X_INTERFACE_PARAMETER of rd_clk : signal is "XIL_INTERFACENAME CLK.RD_CLK, CLK_DOMAIN design_1_rd_clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset_in_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_IN_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_in_0 : signal is "XIL_INTERFACENAME RST.RESET_IN_0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of s_drp_0_den : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DEN";
  attribute X_INTERFACE_INFO of s_drp_0_drdy : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DRDY";
  attribute X_INTERFACE_INFO of s_drp_0_dwe : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DWE";
  attribute X_INTERFACE_INFO of wr_clk : signal is "xilinx.com:signal:clock:1.0 CLK.WR_CLK CLK";
  attribute X_INTERFACE_PARAMETER of wr_clk : signal is "XIL_INTERFACENAME CLK.WR_CLK, CLK_DOMAIN design_1_wr_clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_drp_0_daddr : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DADDR";
  attribute X_INTERFACE_INFO of s_drp_0_di : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DI";
begin
  FIFO_out(11 downto 0) <= fifo_generator_0_dout(11 downto 0);
  Vp_Vn_0_1_V_N <= Vp_Vn_0_v_n;
  Vp_Vn_0_1_V_P <= Vp_Vn_0_v_p;
  alarm_out_0 <= xadc_wiz_0_alarm_out;
  almost_full <= fifo_generator_0_almost_full;
  busy_out_0 <= xadc_wiz_0_busy_out;
  channel_out_0(4 downto 0) <= xadc_wiz_0_channel_out(4 downto 0);
  dclk_in_0_1 <= dclk_in_0;
  do_out(15 downto 0) <= xadc_wiz_0_do_out(15 downto 0);
  empty <= fifo_generator_0_empty;
  eoc_out_0 <= xadc_wiz_0_eoc_out;
  eos_out_0 <= xadc_wiz_0_eos_out;
  full <= fifo_generator_0_full;
  ot_out_0 <= xadc_wiz_0_ot_out;
  rd_clk_1 <= rd_clk;
  rd_en_1 <= rd_en;
  rd_rst_busy <= fifo_generator_0_rd_rst_busy;
  reset_in_0_1 <= reset_in_0;
  s_drp_0_1_DADDR(6 downto 0) <= s_drp_0_daddr(6 downto 0);
  s_drp_0_1_DEN <= s_drp_0_den;
  s_drp_0_1_DI(15 downto 0) <= s_drp_0_di(15 downto 0);
  s_drp_0_1_DWE <= s_drp_0_dwe;
  s_drp_0_drdy <= s_drp_0_1_DRDY;
  slice_out(11 downto 0) <= xlslice_0_Dout(11 downto 0);
  wr_clk_1 <= wr_clk;
  wr_en_1 <= wr_en;
  wr_rst_busy <= fifo_generator_0_wr_rst_busy;
fifo_generator_0: component design_1_fifo_generator_0_0
     port map (
      almost_full => fifo_generator_0_almost_full,
      din(11 downto 0) => xlslice_0_Dout(11 downto 0),
      dout(11 downto 0) => fifo_generator_0_dout(11 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      prog_full => NLW_fifo_generator_0_prog_full_UNCONNECTED,
      rd_clk => rd_clk_1,
      rd_en => rd_en_1,
      rd_rst_busy => fifo_generator_0_rd_rst_busy,
      rst => reset_in_0_1,
      wr_clk => wr_clk_1,
      wr_en => wr_en_1,
      wr_rst_busy => fifo_generator_0_wr_rst_busy
    );
xadc_wiz_0: component design_1_xadc_wiz_0_0
     port map (
      alarm_out => xadc_wiz_0_alarm_out,
      busy_out => xadc_wiz_0_busy_out,
      channel_out(4 downto 0) => xadc_wiz_0_channel_out(4 downto 0),
      daddr_in(6 downto 0) => s_drp_0_1_DADDR(6 downto 0),
      dclk_in => dclk_in_0_1,
      den_in => s_drp_0_1_DEN,
      di_in(15 downto 0) => s_drp_0_1_DI(15 downto 0),
      do_out(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      drdy_out => s_drp_0_1_DRDY,
      dwe_in => s_drp_0_1_DWE,
      eoc_out => xadc_wiz_0_eoc_out,
      eos_out => xadc_wiz_0_eos_out,
      ot_out => xadc_wiz_0_ot_out,
      reset_in => reset_in_0_1,
      vn_in => Vp_Vn_0_1_V_N,
      vp_in => Vp_Vn_0_1_V_P
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      Dout(11 downto 0) => xlslice_0_Dout(11 downto 0)
    );
end STRUCTURE;
