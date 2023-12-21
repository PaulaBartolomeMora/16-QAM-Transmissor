--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Thu Dec 21 09:25:19 2023
--Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
--Command     : generate_target qam16_wrapper.bd
--Design      : qam16_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity qam16_wrapper is
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
end qam16_wrapper;

architecture STRUCTURE of qam16_wrapper is
  component qam16 is
  port (
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst_0 : in STD_LOGIC;
    m_axis_data_tdata_0 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tdata_1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tvalid_0 : out STD_LOGIC;
    m_axis_data_tvalid_1 : out STD_LOGIC;
    s_axis_data_tready_1 : out STD_LOGIC;
    s_axis_data_tvalid_0 : in STD_LOGIC;
    s_axis_data_tvalid_1 : in STD_LOGIC;
    s_axis_data_tready_0 : out STD_LOGIC;
    salida_I : out STD_LOGIC_VECTOR ( 7 downto 0 );
    salida_Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component qam16;
begin
qam16_i: component qam16
     port map (
      ce => ce,
      clk => clk,
      entrada(11 downto 0) => entrada(11 downto 0),
      m_axis_data_tdata_0(23 downto 0) => m_axis_data_tdata_0(23 downto 0),
      m_axis_data_tdata_1(23 downto 0) => m_axis_data_tdata_1(23 downto 0),
      m_axis_data_tvalid_0 => m_axis_data_tvalid_0,
      m_axis_data_tvalid_1 => m_axis_data_tvalid_1,
      rst_0 => rst_0,
      s_axis_data_tready_0 => s_axis_data_tready_0,
      s_axis_data_tready_1 => s_axis_data_tready_1,
      s_axis_data_tvalid_0 => s_axis_data_tvalid_0,
      s_axis_data_tvalid_1 => s_axis_data_tvalid_1,
      salida_I(7 downto 0) => salida_I(7 downto 0),
      salida_Q(7 downto 0) => salida_Q(7 downto 0)
    );
end STRUCTURE;
