--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Thu Nov  9 11:15:55 2023
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    Vp_Vn_0_v_n : in STD_LOGIC;
    Vp_Vn_0_v_p : in STD_LOGIC;
    s_drp_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_drp_0_den : in STD_LOGIC;
    s_drp_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_drdy : out STD_LOGIC;
    s_drp_0_dwe : in STD_LOGIC;
    alarm_out_0 : out STD_LOGIC;
    busy_out_0 : out STD_LOGIC;
    channel_out_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    dclk_in_0 : in STD_LOGIC;
    eoc_out_0 : out STD_LOGIC;
    eos_out_0 : out STD_LOGIC;
    ot_out_0 : out STD_LOGIC;
    reset_in_0 : in STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    slice_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    empty : out STD_LOGIC;
    FIFO_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      FIFO_out(11 downto 0) => FIFO_out(11 downto 0),
      Vp_Vn_0_v_n => Vp_Vn_0_v_n,
      Vp_Vn_0_v_p => Vp_Vn_0_v_p,
      alarm_out_0 => alarm_out_0,
      almost_full => almost_full,
      busy_out_0 => busy_out_0,
      channel_out_0(4 downto 0) => channel_out_0(4 downto 0),
      dclk_in_0 => dclk_in_0,
      do_out(15 downto 0) => do_out(15 downto 0),
      empty => empty,
      eoc_out_0 => eoc_out_0,
      eos_out_0 => eos_out_0,
      full => full,
      ot_out_0 => ot_out_0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      reset_in_0 => reset_in_0,
      s_drp_0_daddr(6 downto 0) => s_drp_0_daddr(6 downto 0),
      s_drp_0_den => s_drp_0_den,
      s_drp_0_di(15 downto 0) => s_drp_0_di(15 downto 0),
      s_drp_0_drdy => s_drp_0_drdy,
      s_drp_0_dwe => s_drp_0_dwe,
      slice_out(11 downto 0) => slice_out(11 downto 0),
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
