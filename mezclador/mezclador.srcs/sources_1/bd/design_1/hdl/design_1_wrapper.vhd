--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Tue Jan 16 17:09:58 2024
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
    Salida_RRC_I : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Salida_RRC_Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    TX_I : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TX_Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    antena : out STD_LOGIC_VECTOR ( 32 downto 0 );
    clk_192 : out STD_LOGIC;
    clk_52 : out STD_LOGIC;
    clk_576 : out STD_LOGIC;
    coseno : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid_0 : out STD_LOGIC;
    rst : in STD_LOGIC;
    seno : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    rst : in STD_LOGIC;
    Salida_RRC_I : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Salida_RRC_Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    TX_I : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TX_Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tdata_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid_0 : out STD_LOGIC;
    seno : out STD_LOGIC_VECTOR ( 7 downto 0 );
    coseno : out STD_LOGIC_VECTOR ( 7 downto 0 );
    antena : out STD_LOGIC_VECTOR ( 32 downto 0 );
    clk_576 : out STD_LOGIC;
    clk_192 : out STD_LOGIC;
    clk_52 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Salida_RRC_I(23 downto 0) => Salida_RRC_I(23 downto 0),
      Salida_RRC_Q(23 downto 0) => Salida_RRC_Q(23 downto 0),
      TX_I(31 downto 0) => TX_I(31 downto 0),
      TX_Q(31 downto 0) => TX_Q(31 downto 0),
      antena(32 downto 0) => antena(32 downto 0),
      clk_192 => clk_192,
      clk_52 => clk_52,
      clk_576 => clk_576,
      coseno(7 downto 0) => coseno(7 downto 0),
      m_axis_data_tdata_0(15 downto 0) => m_axis_data_tdata_0(15 downto 0),
      m_axis_data_tvalid_0 => m_axis_data_tvalid_0,
      rst => rst,
      seno(7 downto 0) => seno(7 downto 0)
    );
end STRUCTURE;
