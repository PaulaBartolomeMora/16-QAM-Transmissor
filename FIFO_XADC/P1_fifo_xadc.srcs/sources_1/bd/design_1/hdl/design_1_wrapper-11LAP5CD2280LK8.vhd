--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Fri Oct 20 09:40:43 2023
--Host        : 11LAP5CD2280LK8 running 64-bit major release  (build 9200)
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
    s_drp_0_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_drdy : out STD_LOGIC;
    s_drp_0_dwe : in STD_LOGIC
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
    s_drp_0_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_drdy : out STD_LOGIC;
    s_drp_0_dwe : in STD_LOGIC;
    alarm_out_0 : out STD_LOGIC;
    busy_out_0 : out STD_LOGIC;
    channel_out_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    dclk_in_0 : in STD_LOGIC;
    eoc_out_0 : out STD_LOGIC;
    eos_out_0 : out STD_LOGIC;
    ot_out_0 : out STD_LOGIC;
    reset_in_0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Vp_Vn_0_v_n => Vp_Vn_0_v_n,
      Vp_Vn_0_v_p => Vp_Vn_0_v_p,
      alarm_out_0 => alarm_out_0,
      busy_out_0 => busy_out_0,
      channel_out_0(4 downto 0) => channel_out_0(4 downto 0),
      dclk_in_0 => dclk_in_0,
      eoc_out_0 => eoc_out_0,
      eos_out_0 => eos_out_0,
      ot_out_0 => ot_out_0,
      reset_in_0 => reset_in_0,
      s_drp_0_daddr(6 downto 0) => s_drp_0_daddr(6 downto 0),
      s_drp_0_den => s_drp_0_den,
      s_drp_0_di(15 downto 0) => s_drp_0_di(15 downto 0),
      s_drp_0_do(15 downto 0) => s_drp_0_do(15 downto 0),
      s_drp_0_drdy => s_drp_0_drdy,
      s_drp_0_dwe => s_drp_0_dwe
    );
end STRUCTURE;
