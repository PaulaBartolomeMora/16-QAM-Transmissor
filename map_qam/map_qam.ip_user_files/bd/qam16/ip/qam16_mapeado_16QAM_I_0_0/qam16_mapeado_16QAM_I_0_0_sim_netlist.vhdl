-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Dec 21 09:21:57 2023
-- Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Paula/OneDrive - Universidad de
--               Alcala/Todo/map_qam_enviado/map_qam.srcs/sources_1/bd/qam16/ip/qam16_mapeado_16QAM_I_0_0/qam16_mapeado_16QAM_I_0_0_sim_netlist.vhdl}
-- Design      : qam16_mapeado_16QAM_I_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbg484-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity qam16_mapeado_16QAM_I_0_0_mapeado_16QAM_I is
  port (
    salida : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of qam16_mapeado_16QAM_I_0_0_mapeado_16QAM_I : entity is "mapeado_16QAM_I";
end qam16_mapeado_16QAM_I_0_0_mapeado_16QAM_I;

architecture STRUCTURE of qam16_mapeado_16QAM_I_0_0_mapeado_16QAM_I is
  signal cont_32 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cont_320_carry__0_n_0\ : STD_LOGIC;
  signal \cont_320_carry__0_n_1\ : STD_LOGIC;
  signal \cont_320_carry__0_n_2\ : STD_LOGIC;
  signal \cont_320_carry__0_n_3\ : STD_LOGIC;
  signal \cont_320_carry__0_n_4\ : STD_LOGIC;
  signal \cont_320_carry__0_n_5\ : STD_LOGIC;
  signal \cont_320_carry__0_n_6\ : STD_LOGIC;
  signal \cont_320_carry__0_n_7\ : STD_LOGIC;
  signal \cont_320_carry__1_n_0\ : STD_LOGIC;
  signal \cont_320_carry__1_n_1\ : STD_LOGIC;
  signal \cont_320_carry__1_n_2\ : STD_LOGIC;
  signal \cont_320_carry__1_n_3\ : STD_LOGIC;
  signal \cont_320_carry__1_n_4\ : STD_LOGIC;
  signal \cont_320_carry__1_n_5\ : STD_LOGIC;
  signal \cont_320_carry__1_n_6\ : STD_LOGIC;
  signal \cont_320_carry__1_n_7\ : STD_LOGIC;
  signal \cont_320_carry__2_n_0\ : STD_LOGIC;
  signal \cont_320_carry__2_n_1\ : STD_LOGIC;
  signal \cont_320_carry__2_n_2\ : STD_LOGIC;
  signal \cont_320_carry__2_n_3\ : STD_LOGIC;
  signal \cont_320_carry__2_n_4\ : STD_LOGIC;
  signal \cont_320_carry__2_n_5\ : STD_LOGIC;
  signal \cont_320_carry__2_n_6\ : STD_LOGIC;
  signal \cont_320_carry__2_n_7\ : STD_LOGIC;
  signal \cont_320_carry__3_n_0\ : STD_LOGIC;
  signal \cont_320_carry__3_n_1\ : STD_LOGIC;
  signal \cont_320_carry__3_n_2\ : STD_LOGIC;
  signal \cont_320_carry__3_n_3\ : STD_LOGIC;
  signal \cont_320_carry__3_n_4\ : STD_LOGIC;
  signal \cont_320_carry__3_n_5\ : STD_LOGIC;
  signal \cont_320_carry__3_n_6\ : STD_LOGIC;
  signal \cont_320_carry__3_n_7\ : STD_LOGIC;
  signal \cont_320_carry__4_n_0\ : STD_LOGIC;
  signal \cont_320_carry__4_n_1\ : STD_LOGIC;
  signal \cont_320_carry__4_n_2\ : STD_LOGIC;
  signal \cont_320_carry__4_n_3\ : STD_LOGIC;
  signal \cont_320_carry__4_n_4\ : STD_LOGIC;
  signal \cont_320_carry__4_n_5\ : STD_LOGIC;
  signal \cont_320_carry__4_n_6\ : STD_LOGIC;
  signal \cont_320_carry__4_n_7\ : STD_LOGIC;
  signal \cont_320_carry__5_n_0\ : STD_LOGIC;
  signal \cont_320_carry__5_n_1\ : STD_LOGIC;
  signal \cont_320_carry__5_n_2\ : STD_LOGIC;
  signal \cont_320_carry__5_n_3\ : STD_LOGIC;
  signal \cont_320_carry__5_n_4\ : STD_LOGIC;
  signal \cont_320_carry__5_n_5\ : STD_LOGIC;
  signal \cont_320_carry__5_n_6\ : STD_LOGIC;
  signal \cont_320_carry__5_n_7\ : STD_LOGIC;
  signal \cont_320_carry__6_n_2\ : STD_LOGIC;
  signal \cont_320_carry__6_n_3\ : STD_LOGIC;
  signal \cont_320_carry__6_n_5\ : STD_LOGIC;
  signal \cont_320_carry__6_n_6\ : STD_LOGIC;
  signal \cont_320_carry__6_n_7\ : STD_LOGIC;
  signal cont_320_carry_n_0 : STD_LOGIC;
  signal cont_320_carry_n_1 : STD_LOGIC;
  signal cont_320_carry_n_2 : STD_LOGIC;
  signal cont_320_carry_n_3 : STD_LOGIC;
  signal cont_320_carry_n_4 : STD_LOGIC;
  signal cont_320_carry_n_5 : STD_LOGIC;
  signal cont_320_carry_n_6 : STD_LOGIC;
  signal cont_320_carry_n_7 : STD_LOGIC;
  signal \cont_32[10]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[11]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[12]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[13]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[14]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[15]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[16]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[17]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[18]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[19]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[1]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[20]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[21]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[22]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[23]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[24]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[25]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[26]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[27]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[28]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[29]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[2]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[30]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[31]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[3]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[4]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[5]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[6]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[7]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[8]_i_1_n_0\ : STD_LOGIC;
  signal \cont_32[9]_i_1_n_0\ : STD_LOGIC;
  signal cont_32_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal contador : STD_LOGIC;
  signal \contador0_carry__0_n_0\ : STD_LOGIC;
  signal \contador0_carry__0_n_1\ : STD_LOGIC;
  signal \contador0_carry__0_n_2\ : STD_LOGIC;
  signal \contador0_carry__0_n_3\ : STD_LOGIC;
  signal \contador0_carry__1_n_2\ : STD_LOGIC;
  signal \contador0_carry__1_n_3\ : STD_LOGIC;
  signal \contador0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \contador0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal contador0_carry_i_1_n_0 : STD_LOGIC;
  signal \contador0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \contador0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal contador0_carry_i_2_n_0 : STD_LOGIC;
  signal \contador0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \contador0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal contador0_carry_i_3_n_0 : STD_LOGIC;
  signal \contador0_carry_i_4__0_n_2\ : STD_LOGIC;
  signal \contador0_carry_i_4__0_n_3\ : STD_LOGIC;
  signal \contador0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal contador0_carry_i_4_n_0 : STD_LOGIC;
  signal \contador0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \contador0_carry_i_5__0_n_1\ : STD_LOGIC;
  signal \contador0_carry_i_5__0_n_2\ : STD_LOGIC;
  signal \contador0_carry_i_5__0_n_3\ : STD_LOGIC;
  signal \contador0_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \contador0_carry_i_5__1_n_1\ : STD_LOGIC;
  signal \contador0_carry_i_5__1_n_2\ : STD_LOGIC;
  signal \contador0_carry_i_5__1_n_3\ : STD_LOGIC;
  signal contador0_carry_i_5_n_0 : STD_LOGIC;
  signal contador0_carry_i_5_n_1 : STD_LOGIC;
  signal contador0_carry_i_5_n_2 : STD_LOGIC;
  signal contador0_carry_i_5_n_3 : STD_LOGIC;
  signal \contador0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \contador0_carry_i_6__0_n_1\ : STD_LOGIC;
  signal \contador0_carry_i_6__0_n_2\ : STD_LOGIC;
  signal \contador0_carry_i_6__0_n_3\ : STD_LOGIC;
  signal contador0_carry_i_6_n_0 : STD_LOGIC;
  signal contador0_carry_i_6_n_1 : STD_LOGIC;
  signal contador0_carry_i_6_n_2 : STD_LOGIC;
  signal contador0_carry_i_6_n_3 : STD_LOGIC;
  signal \contador0_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \contador0_carry_i_7__0_n_1\ : STD_LOGIC;
  signal \contador0_carry_i_7__0_n_2\ : STD_LOGIC;
  signal \contador0_carry_i_7__0_n_3\ : STD_LOGIC;
  signal contador0_carry_i_7_n_0 : STD_LOGIC;
  signal contador0_carry_i_7_n_1 : STD_LOGIC;
  signal contador0_carry_i_7_n_2 : STD_LOGIC;
  signal contador0_carry_i_7_n_3 : STD_LOGIC;
  signal contador0_carry_n_0 : STD_LOGIC;
  signal contador0_carry_n_1 : STD_LOGIC;
  signal contador0_carry_n_2 : STD_LOGIC;
  signal contador0_carry_n_3 : STD_LOGIC;
  signal \contador[0]_i_1_n_0\ : STD_LOGIC;
  signal contador_reg : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \contador_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \contador_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \contador_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \contador_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \contador_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \contador_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \contador_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \contador_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 30 );
  signal data0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \salida[0]_i_1_n_0\ : STD_LOGIC;
  signal \salida[0]_i_2_n_0\ : STD_LOGIC;
  signal \salida[1]_i_1_n_0\ : STD_LOGIC;
  signal \salida[1]_i_2_n_0\ : STD_LOGIC;
  signal \salida[1]_i_3_n_0\ : STD_LOGIC;
  signal \salida[2]_i_10_n_0\ : STD_LOGIC;
  signal \salida[2]_i_1_n_0\ : STD_LOGIC;
  signal \salida[2]_i_2_n_0\ : STD_LOGIC;
  signal \salida[2]_i_3_n_0\ : STD_LOGIC;
  signal \salida[2]_i_4_n_0\ : STD_LOGIC;
  signal \salida[2]_i_5_n_0\ : STD_LOGIC;
  signal \salida[2]_i_6_n_0\ : STD_LOGIC;
  signal \salida[2]_i_7_n_0\ : STD_LOGIC;
  signal \salida[2]_i_8_n_0\ : STD_LOGIC;
  signal \salida[2]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_cont_320_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cont_320_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_contador0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_contador0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_contador0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_contador0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_contador0_carry_i_4__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_contador0_carry_i_4__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_contador_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
cont_320_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cont_320_carry_n_0,
      CO(2) => cont_320_carry_n_1,
      CO(1) => cont_320_carry_n_2,
      CO(0) => cont_320_carry_n_3,
      CYINIT => cont_32(0),
      DI(3 downto 0) => B"0000",
      O(3) => cont_320_carry_n_4,
      O(2) => cont_320_carry_n_5,
      O(1) => cont_320_carry_n_6,
      O(0) => cont_320_carry_n_7,
      S(3 downto 0) => cont_32(4 downto 1)
    );
\cont_320_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cont_320_carry_n_0,
      CO(3) => \cont_320_carry__0_n_0\,
      CO(2) => \cont_320_carry__0_n_1\,
      CO(1) => \cont_320_carry__0_n_2\,
      CO(0) => \cont_320_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cont_320_carry__0_n_4\,
      O(2) => \cont_320_carry__0_n_5\,
      O(1) => \cont_320_carry__0_n_6\,
      O(0) => \cont_320_carry__0_n_7\,
      S(3 downto 0) => cont_32(8 downto 5)
    );
\cont_320_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cont_320_carry__0_n_0\,
      CO(3) => \cont_320_carry__1_n_0\,
      CO(2) => \cont_320_carry__1_n_1\,
      CO(1) => \cont_320_carry__1_n_2\,
      CO(0) => \cont_320_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cont_320_carry__1_n_4\,
      O(2) => \cont_320_carry__1_n_5\,
      O(1) => \cont_320_carry__1_n_6\,
      O(0) => \cont_320_carry__1_n_7\,
      S(3 downto 0) => cont_32(12 downto 9)
    );
\cont_320_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cont_320_carry__1_n_0\,
      CO(3) => \cont_320_carry__2_n_0\,
      CO(2) => \cont_320_carry__2_n_1\,
      CO(1) => \cont_320_carry__2_n_2\,
      CO(0) => \cont_320_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cont_320_carry__2_n_4\,
      O(2) => \cont_320_carry__2_n_5\,
      O(1) => \cont_320_carry__2_n_6\,
      O(0) => \cont_320_carry__2_n_7\,
      S(3 downto 0) => cont_32(16 downto 13)
    );
\cont_320_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cont_320_carry__2_n_0\,
      CO(3) => \cont_320_carry__3_n_0\,
      CO(2) => \cont_320_carry__3_n_1\,
      CO(1) => \cont_320_carry__3_n_2\,
      CO(0) => \cont_320_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cont_320_carry__3_n_4\,
      O(2) => \cont_320_carry__3_n_5\,
      O(1) => \cont_320_carry__3_n_6\,
      O(0) => \cont_320_carry__3_n_7\,
      S(3 downto 0) => cont_32(20 downto 17)
    );
\cont_320_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cont_320_carry__3_n_0\,
      CO(3) => \cont_320_carry__4_n_0\,
      CO(2) => \cont_320_carry__4_n_1\,
      CO(1) => \cont_320_carry__4_n_2\,
      CO(0) => \cont_320_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cont_320_carry__4_n_4\,
      O(2) => \cont_320_carry__4_n_5\,
      O(1) => \cont_320_carry__4_n_6\,
      O(0) => \cont_320_carry__4_n_7\,
      S(3 downto 0) => cont_32(24 downto 21)
    );
\cont_320_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cont_320_carry__4_n_0\,
      CO(3) => \cont_320_carry__5_n_0\,
      CO(2) => \cont_320_carry__5_n_1\,
      CO(1) => \cont_320_carry__5_n_2\,
      CO(0) => \cont_320_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cont_320_carry__5_n_4\,
      O(2) => \cont_320_carry__5_n_5\,
      O(1) => \cont_320_carry__5_n_6\,
      O(0) => \cont_320_carry__5_n_7\,
      S(3 downto 0) => cont_32(28 downto 25)
    );
\cont_320_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cont_320_carry__5_n_0\,
      CO(3 downto 2) => \NLW_cont_320_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cont_320_carry__6_n_2\,
      CO(0) => \cont_320_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cont_320_carry__6_O_UNCONNECTED\(3),
      O(2) => \cont_320_carry__6_n_5\,
      O(1) => \cont_320_carry__6_n_6\,
      O(0) => \cont_320_carry__6_n_7\,
      S(3) => '0',
      S(2 downto 0) => cont_32(31 downto 29)
    );
\cont_32[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFDFF"
    )
        port map (
      I0 => \salida[2]_i_6_n_0\,
      I1 => \salida[2]_i_5_n_0\,
      I2 => cont_32(16),
      I3 => cont_32(5),
      I4 => \salida[2]_i_3_n_0\,
      I5 => cont_32(0),
      O => cont_32_0(0)
    );
\cont_32[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__1_n_6\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[10]_i_1_n_0\
    );
\cont_32[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__1_n_5\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[11]_i_1_n_0\
    );
\cont_32[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__1_n_4\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[12]_i_1_n_0\
    );
\cont_32[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__2_n_7\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[13]_i_1_n_0\
    );
\cont_32[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__2_n_6\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[14]_i_1_n_0\
    );
\cont_32[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__2_n_5\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[15]_i_1_n_0\
    );
\cont_32[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__2_n_4\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[16]_i_1_n_0\
    );
\cont_32[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__3_n_7\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[17]_i_1_n_0\
    );
\cont_32[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__3_n_6\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[18]_i_1_n_0\
    );
\cont_32[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__3_n_5\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[19]_i_1_n_0\
    );
\cont_32[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => cont_320_carry_n_7,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[1]_i_1_n_0\
    );
\cont_32[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__3_n_4\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[20]_i_1_n_0\
    );
\cont_32[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__4_n_7\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[21]_i_1_n_0\
    );
\cont_32[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__4_n_6\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[22]_i_1_n_0\
    );
\cont_32[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__4_n_5\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[23]_i_1_n_0\
    );
\cont_32[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__4_n_4\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[24]_i_1_n_0\
    );
\cont_32[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__5_n_7\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[25]_i_1_n_0\
    );
\cont_32[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__5_n_6\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[26]_i_1_n_0\
    );
\cont_32[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__5_n_5\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[27]_i_1_n_0\
    );
\cont_32[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__5_n_4\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[28]_i_1_n_0\
    );
\cont_32[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__6_n_7\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[29]_i_1_n_0\
    );
\cont_32[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => cont_320_carry_n_6,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[2]_i_1_n_0\
    );
\cont_32[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__6_n_6\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[30]_i_1_n_0\
    );
\cont_32[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__6_n_5\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[31]_i_1_n_0\
    );
\cont_32[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => cont_320_carry_n_5,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[3]_i_1_n_0\
    );
\cont_32[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => cont_320_carry_n_4,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[4]_i_1_n_0\
    );
\cont_32[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__0_n_7\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[5]_i_1_n_0\
    );
\cont_32[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__0_n_6\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[6]_i_1_n_0\
    );
\cont_32[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__0_n_5\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[7]_i_1_n_0\
    );
\cont_32[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__0_n_4\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[8]_i_1_n_0\
    );
\cont_32[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \cont_320_carry__1_n_7\,
      I1 => \salida[2]_i_6_n_0\,
      I2 => \salida[2]_i_5_n_0\,
      I3 => cont_32(16),
      I4 => cont_32(5),
      I5 => \salida[2]_i_3_n_0\,
      O => \cont_32[9]_i_1_n_0\
    );
\cont_32_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cont_32_0(0),
      Q => cont_32(0),
      R => rst
    );
\cont_32_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[10]_i_1_n_0\,
      Q => cont_32(10),
      R => rst
    );
\cont_32_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[11]_i_1_n_0\,
      Q => cont_32(11),
      R => rst
    );
\cont_32_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[12]_i_1_n_0\,
      Q => cont_32(12),
      R => rst
    );
\cont_32_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[13]_i_1_n_0\,
      Q => cont_32(13),
      R => rst
    );
\cont_32_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[14]_i_1_n_0\,
      Q => cont_32(14),
      R => rst
    );
\cont_32_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[15]_i_1_n_0\,
      Q => cont_32(15),
      R => rst
    );
\cont_32_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[16]_i_1_n_0\,
      Q => cont_32(16),
      R => rst
    );
\cont_32_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[17]_i_1_n_0\,
      Q => cont_32(17),
      R => rst
    );
\cont_32_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[18]_i_1_n_0\,
      Q => cont_32(18),
      R => rst
    );
\cont_32_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[19]_i_1_n_0\,
      Q => cont_32(19),
      R => rst
    );
\cont_32_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[1]_i_1_n_0\,
      Q => cont_32(1),
      R => rst
    );
\cont_32_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[20]_i_1_n_0\,
      Q => cont_32(20),
      R => rst
    );
\cont_32_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[21]_i_1_n_0\,
      Q => cont_32(21),
      R => rst
    );
\cont_32_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[22]_i_1_n_0\,
      Q => cont_32(22),
      R => rst
    );
\cont_32_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[23]_i_1_n_0\,
      Q => cont_32(23),
      R => rst
    );
\cont_32_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[24]_i_1_n_0\,
      Q => cont_32(24),
      R => rst
    );
\cont_32_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[25]_i_1_n_0\,
      Q => cont_32(25),
      R => rst
    );
\cont_32_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[26]_i_1_n_0\,
      Q => cont_32(26),
      R => rst
    );
\cont_32_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[27]_i_1_n_0\,
      Q => cont_32(27),
      R => rst
    );
\cont_32_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[28]_i_1_n_0\,
      Q => cont_32(28),
      R => rst
    );
\cont_32_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[29]_i_1_n_0\,
      Q => cont_32(29),
      R => rst
    );
\cont_32_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[2]_i_1_n_0\,
      Q => cont_32(2),
      R => rst
    );
\cont_32_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[30]_i_1_n_0\,
      Q => cont_32(30),
      R => rst
    );
\cont_32_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[31]_i_1_n_0\,
      Q => cont_32(31),
      R => rst
    );
\cont_32_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[3]_i_1_n_0\,
      Q => cont_32(3),
      R => rst
    );
\cont_32_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[4]_i_1_n_0\,
      Q => cont_32(4),
      R => rst
    );
\cont_32_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[5]_i_1_n_0\,
      Q => cont_32(5),
      R => rst
    );
\cont_32_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[6]_i_1_n_0\,
      Q => cont_32(6),
      R => rst
    );
\cont_32_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[7]_i_1_n_0\,
      Q => cont_32(7),
      R => rst
    );
\cont_32_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[8]_i_1_n_0\,
      Q => cont_32(8),
      R => rst
    );
\cont_32_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cont_32[9]_i_1_n_0\,
      Q => cont_32(9),
      R => rst
    );
contador0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => contador0_carry_n_0,
      CO(2) => contador0_carry_n_1,
      CO(1) => contador0_carry_n_2,
      CO(0) => contador0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_contador0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => contador0_carry_i_1_n_0,
      S(2) => contador0_carry_i_2_n_0,
      S(1) => contador0_carry_i_3_n_0,
      S(0) => \contador0_carry_i_4__1_n_0\
    );
\contador0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => contador0_carry_n_0,
      CO(3) => \contador0_carry__0_n_0\,
      CO(2) => \contador0_carry__0_n_1\,
      CO(1) => \contador0_carry__0_n_2\,
      CO(0) => \contador0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_contador0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \contador0_carry_i_1__0_n_0\,
      S(2) => \contador0_carry_i_2__0_n_0\,
      S(1) => \contador0_carry_i_3__0_n_0\,
      S(0) => contador0_carry_i_4_n_0
    );
\contador0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador0_carry__0_n_0\,
      CO(3) => \NLW_contador0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => data0,
      CO(1) => \contador0_carry__1_n_2\,
      CO(0) => \contador0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_contador0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \contador0_carry_i_1__1_n_0\,
      S(1) => \contador0_carry_i_2__1_n_0\,
      S(0) => \contador0_carry_i_3__1_n_0\
    );
contador0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(10),
      I1 => p_0_in(11),
      I2 => p_0_in(9),
      O => contador0_carry_i_1_n_0
    );
\contador0_carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(22),
      I1 => p_0_in(23),
      I2 => p_0_in(21),
      O => \contador0_carry_i_1__0_n_0\
    );
\contador0_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(31),
      I1 => p_0_in(30),
      O => \contador0_carry_i_1__1_n_0\
    );
contador0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(8),
      I2 => p_0_in(6),
      O => contador0_carry_i_2_n_0
    );
\contador0_carry_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(19),
      I1 => p_0_in(20),
      I2 => p_0_in(18),
      O => \contador0_carry_i_2__0_n_0\
    );
\contador0_carry_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(28),
      I1 => p_0_in(29),
      I2 => p_0_in(27),
      O => \contador0_carry_i_2__1_n_0\
    );
contador0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(3),
      O => contador0_carry_i_3_n_0
    );
\contador0_carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(16),
      I1 => p_0_in(17),
      I2 => p_0_in(15),
      O => \contador0_carry_i_3__0_n_0\
    );
\contador0_carry_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(25),
      I1 => p_0_in(26),
      I2 => p_0_in(24),
      O => \contador0_carry_i_3__1_n_0\
    );
contador0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(13),
      I1 => p_0_in(14),
      I2 => p_0_in(12),
      O => contador0_carry_i_4_n_0
    );
\contador0_carry_i_4__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador0_carry_i_5__1_n_0\,
      CO(3 downto 2) => \NLW_contador0_carry_i_4__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \contador0_carry_i_4__0_n_2\,
      CO(0) => \contador0_carry_i_4__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_contador0_carry_i_4__0_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(31 downto 29),
      S(3) => '0',
      S(2 downto 1) => \contador_reg__0\(31 downto 30),
      S(0) => contador_reg(29)
    );
\contador0_carry_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => contador_reg(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      O => \contador0_carry_i_4__1_n_0\
    );
contador0_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => contador0_carry_i_6_n_0,
      CO(3) => contador0_carry_i_5_n_0,
      CO(2) => contador0_carry_i_5_n_1,
      CO(1) => contador0_carry_i_5_n_2,
      CO(0) => contador0_carry_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(12 downto 9),
      S(3 downto 0) => contador_reg(12 downto 9)
    );
\contador0_carry_i_5__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador0_carry_i_6__0_n_0\,
      CO(3) => \contador0_carry_i_5__0_n_0\,
      CO(2) => \contador0_carry_i_5__0_n_1\,
      CO(1) => \contador0_carry_i_5__0_n_2\,
      CO(0) => \contador0_carry_i_5__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(24 downto 21),
      S(3 downto 0) => contador_reg(24 downto 21)
    );
\contador0_carry_i_5__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador0_carry_i_5__0_n_0\,
      CO(3) => \contador0_carry_i_5__1_n_0\,
      CO(2) => \contador0_carry_i_5__1_n_1\,
      CO(1) => \contador0_carry_i_5__1_n_2\,
      CO(0) => \contador0_carry_i_5__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(28 downto 25),
      S(3 downto 0) => contador_reg(28 downto 25)
    );
contador0_carry_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => contador0_carry_i_7_n_0,
      CO(3) => contador0_carry_i_6_n_0,
      CO(2) => contador0_carry_i_6_n_1,
      CO(1) => contador0_carry_i_6_n_2,
      CO(0) => contador0_carry_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(8 downto 5),
      S(3 downto 0) => contador_reg(8 downto 5)
    );
\contador0_carry_i_6__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador0_carry_i_7__0_n_0\,
      CO(3) => \contador0_carry_i_6__0_n_0\,
      CO(2) => \contador0_carry_i_6__0_n_1\,
      CO(1) => \contador0_carry_i_6__0_n_2\,
      CO(0) => \contador0_carry_i_6__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(20 downto 17),
      S(3 downto 0) => contador_reg(20 downto 17)
    );
contador0_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => contador0_carry_i_7_n_0,
      CO(2) => contador0_carry_i_7_n_1,
      CO(1) => contador0_carry_i_7_n_2,
      CO(0) => contador0_carry_i_7_n_3,
      CYINIT => contador_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3 downto 0) => contador_reg(4 downto 1)
    );
\contador0_carry_i_7__0\: unisim.vcomponents.CARRY4
     port map (
      CI => contador0_carry_i_5_n_0,
      CO(3) => \contador0_carry_i_7__0_n_0\,
      CO(2) => \contador0_carry_i_7__0_n_1\,
      CO(1) => \contador0_carry_i_7__0_n_2\,
      CO(0) => \contador0_carry_i_7__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(16 downto 13),
      S(3 downto 0) => contador_reg(16 downto 13)
    );
\contador[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => rst,
      I1 => \salida[2]_i_5_n_0\,
      I2 => \salida[2]_i_4_n_0\,
      I3 => data0,
      I4 => \salida[2]_i_3_n_0\,
      I5 => \salida[2]_i_6_n_0\,
      O => \contador[0]_i_1_n_0\
    );
\contador[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \salida[2]_i_6_n_0\,
      I1 => \salida[2]_i_5_n_0\,
      I2 => cont_32(16),
      I3 => cont_32(5),
      I4 => \salida[2]_i_3_n_0\,
      O => contador
    );
\contador[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_reg(0),
      O => p_0_in(0)
    );
\contador_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[0]_i_3_n_7\,
      Q => contador_reg(0),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \contador_reg[0]_i_3_n_0\,
      CO(2) => \contador_reg[0]_i_3_n_1\,
      CO(1) => \contador_reg[0]_i_3_n_2\,
      CO(0) => \contador_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \contador_reg[0]_i_3_n_4\,
      O(2) => \contador_reg[0]_i_3_n_5\,
      O(1) => \contador_reg[0]_i_3_n_6\,
      O(0) => \contador_reg[0]_i_3_n_7\,
      S(3 downto 1) => contador_reg(3 downto 1),
      S(0) => p_0_in(0)
    );
\contador_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[8]_i_1_n_5\,
      Q => contador_reg(10),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[8]_i_1_n_4\,
      Q => contador_reg(11),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[12]_i_1_n_7\,
      Q => contador_reg(12),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[8]_i_1_n_0\,
      CO(3) => \contador_reg[12]_i_1_n_0\,
      CO(2) => \contador_reg[12]_i_1_n_1\,
      CO(1) => \contador_reg[12]_i_1_n_2\,
      CO(0) => \contador_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[12]_i_1_n_4\,
      O(2) => \contador_reg[12]_i_1_n_5\,
      O(1) => \contador_reg[12]_i_1_n_6\,
      O(0) => \contador_reg[12]_i_1_n_7\,
      S(3 downto 0) => contador_reg(15 downto 12)
    );
\contador_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[12]_i_1_n_6\,
      Q => contador_reg(13),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[12]_i_1_n_5\,
      Q => contador_reg(14),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[12]_i_1_n_4\,
      Q => contador_reg(15),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[16]_i_1_n_7\,
      Q => contador_reg(16),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[12]_i_1_n_0\,
      CO(3) => \contador_reg[16]_i_1_n_0\,
      CO(2) => \contador_reg[16]_i_1_n_1\,
      CO(1) => \contador_reg[16]_i_1_n_2\,
      CO(0) => \contador_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[16]_i_1_n_4\,
      O(2) => \contador_reg[16]_i_1_n_5\,
      O(1) => \contador_reg[16]_i_1_n_6\,
      O(0) => \contador_reg[16]_i_1_n_7\,
      S(3 downto 0) => contador_reg(19 downto 16)
    );
\contador_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[16]_i_1_n_6\,
      Q => contador_reg(17),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[16]_i_1_n_5\,
      Q => contador_reg(18),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[16]_i_1_n_4\,
      Q => contador_reg(19),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[0]_i_3_n_6\,
      Q => contador_reg(1),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[20]_i_1_n_7\,
      Q => contador_reg(20),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[16]_i_1_n_0\,
      CO(3) => \contador_reg[20]_i_1_n_0\,
      CO(2) => \contador_reg[20]_i_1_n_1\,
      CO(1) => \contador_reg[20]_i_1_n_2\,
      CO(0) => \contador_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[20]_i_1_n_4\,
      O(2) => \contador_reg[20]_i_1_n_5\,
      O(1) => \contador_reg[20]_i_1_n_6\,
      O(0) => \contador_reg[20]_i_1_n_7\,
      S(3 downto 0) => contador_reg(23 downto 20)
    );
\contador_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[20]_i_1_n_6\,
      Q => contador_reg(21),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[20]_i_1_n_5\,
      Q => contador_reg(22),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[20]_i_1_n_4\,
      Q => contador_reg(23),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[24]_i_1_n_7\,
      Q => contador_reg(24),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[20]_i_1_n_0\,
      CO(3) => \contador_reg[24]_i_1_n_0\,
      CO(2) => \contador_reg[24]_i_1_n_1\,
      CO(1) => \contador_reg[24]_i_1_n_2\,
      CO(0) => \contador_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[24]_i_1_n_4\,
      O(2) => \contador_reg[24]_i_1_n_5\,
      O(1) => \contador_reg[24]_i_1_n_6\,
      O(0) => \contador_reg[24]_i_1_n_7\,
      S(3 downto 0) => contador_reg(27 downto 24)
    );
\contador_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[24]_i_1_n_6\,
      Q => contador_reg(25),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[24]_i_1_n_5\,
      Q => contador_reg(26),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[24]_i_1_n_4\,
      Q => contador_reg(27),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[28]_i_1_n_7\,
      Q => contador_reg(28),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[24]_i_1_n_0\,
      CO(3) => \NLW_contador_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \contador_reg[28]_i_1_n_1\,
      CO(1) => \contador_reg[28]_i_1_n_2\,
      CO(0) => \contador_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[28]_i_1_n_4\,
      O(2) => \contador_reg[28]_i_1_n_5\,
      O(1) => \contador_reg[28]_i_1_n_6\,
      O(0) => \contador_reg[28]_i_1_n_7\,
      S(3 downto 2) => \contador_reg__0\(31 downto 30),
      S(1 downto 0) => contador_reg(29 downto 28)
    );
\contador_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[28]_i_1_n_6\,
      Q => contador_reg(29),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[0]_i_3_n_5\,
      Q => contador_reg(2),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[28]_i_1_n_5\,
      Q => \contador_reg__0\(30),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[28]_i_1_n_4\,
      Q => \contador_reg__0\(31),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[0]_i_3_n_4\,
      Q => contador_reg(3),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[4]_i_1_n_7\,
      Q => contador_reg(4),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[0]_i_3_n_0\,
      CO(3) => \contador_reg[4]_i_1_n_0\,
      CO(2) => \contador_reg[4]_i_1_n_1\,
      CO(1) => \contador_reg[4]_i_1_n_2\,
      CO(0) => \contador_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[4]_i_1_n_4\,
      O(2) => \contador_reg[4]_i_1_n_5\,
      O(1) => \contador_reg[4]_i_1_n_6\,
      O(0) => \contador_reg[4]_i_1_n_7\,
      S(3 downto 0) => contador_reg(7 downto 4)
    );
\contador_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[4]_i_1_n_6\,
      Q => contador_reg(5),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[4]_i_1_n_5\,
      Q => contador_reg(6),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[4]_i_1_n_4\,
      Q => contador_reg(7),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[8]_i_1_n_7\,
      Q => contador_reg(8),
      R => \contador[0]_i_1_n_0\
    );
\contador_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[4]_i_1_n_0\,
      CO(3) => \contador_reg[8]_i_1_n_0\,
      CO(2) => \contador_reg[8]_i_1_n_1\,
      CO(1) => \contador_reg[8]_i_1_n_2\,
      CO(0) => \contador_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[8]_i_1_n_4\,
      O(2) => \contador_reg[8]_i_1_n_5\,
      O(1) => \contador_reg[8]_i_1_n_6\,
      O(0) => \contador_reg[8]_i_1_n_7\,
      S(3 downto 0) => contador_reg(11 downto 8)
    );
\contador_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => contador,
      D => \contador_reg[8]_i_1_n_6\,
      Q => contador_reg(9),
      R => \contador[0]_i_1_n_0\
    );
\salida[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \salida[0]_i_2_n_0\,
      I1 => \salida[2]_i_3_n_0\,
      I2 => \salida[2]_i_4_n_0\,
      I3 => \salida[2]_i_5_n_0\,
      I4 => \salida[2]_i_6_n_0\,
      I5 => rst,
      O => \salida[0]_i_1_n_0\
    );
\salida[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A556A6AAAA56A6"
    )
        port map (
      I0 => \salida[1]_i_3_n_0\,
      I1 => entrada(0),
      I2 => contador_reg(1),
      I3 => entrada(6),
      I4 => contador_reg(0),
      I5 => entrada(3),
      O => \salida[0]_i_2_n_0\
    );
\salida[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \salida[1]_i_2_n_0\,
      I1 => \salida[2]_i_3_n_0\,
      I2 => \salida[2]_i_4_n_0\,
      I3 => \salida[2]_i_5_n_0\,
      I4 => \salida[2]_i_6_n_0\,
      I5 => rst,
      O => \salida[1]_i_1_n_0\
    );
\salida[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC1DFF1D33E200E2"
    )
        port map (
      I0 => entrada(2),
      I1 => contador_reg(1),
      I2 => entrada(8),
      I3 => contador_reg(0),
      I4 => entrada(5),
      I5 => \salida[1]_i_3_n_0\,
      O => \salida[1]_i_2_n_0\
    );
\salida[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => entrada(4),
      I1 => contador_reg(0),
      I2 => entrada(7),
      I3 => contador_reg(1),
      I4 => entrada(1),
      O => \salida[1]_i_3_n_0\
    );
\salida[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \salida[2]_i_2_n_0\,
      I1 => \salida[2]_i_3_n_0\,
      I2 => \salida[2]_i_4_n_0\,
      I3 => \salida[2]_i_5_n_0\,
      I4 => \salida[2]_i_6_n_0\,
      I5 => rst,
      O => \salida[2]_i_1_n_0\
    );
\salida[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cont_32(3),
      I1 => cont_32(2),
      I2 => cont_32(31),
      I3 => cont_32(28),
      O => \salida[2]_i_10_n_0\
    );
\salida[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => entrada(5),
      I1 => contador_reg(0),
      I2 => entrada(8),
      I3 => contador_reg(1),
      I4 => entrada(2),
      O => \salida[2]_i_2_n_0\
    );
\salida[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cont_32(0),
      I1 => cont_32(9),
      I2 => cont_32(22),
      I3 => cont_32(23),
      I4 => \salida[2]_i_7_n_0\,
      O => \salida[2]_i_3_n_0\
    );
\salida[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cont_32(16),
      I1 => cont_32(5),
      O => \salida[2]_i_4_n_0\
    );
\salida[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cont_32(1),
      I1 => cont_32(25),
      I2 => cont_32(8),
      I3 => cont_32(21),
      I4 => \salida[2]_i_8_n_0\,
      O => \salida[2]_i_5_n_0\
    );
\salida[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \salida[2]_i_9_n_0\,
      I1 => \salida[2]_i_10_n_0\,
      I2 => cont_32(10),
      I3 => cont_32(7),
      I4 => cont_32(14),
      I5 => cont_32(6),
      O => \salida[2]_i_6_n_0\
    );
\salida[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cont_32(19),
      I1 => cont_32(18),
      I2 => cont_32(4),
      I3 => cont_32(24),
      O => \salida[2]_i_7_n_0\
    );
\salida[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cont_32(20),
      I1 => cont_32(17),
      I2 => cont_32(13),
      I3 => cont_32(12),
      O => \salida[2]_i_8_n_0\
    );
\salida[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cont_32(30),
      I1 => cont_32(29),
      I2 => cont_32(11),
      I3 => cont_32(27),
      I4 => cont_32(15),
      I5 => cont_32(26),
      O => \salida[2]_i_9_n_0\
    );
\salida_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \salida[0]_i_1_n_0\,
      Q => salida(0),
      R => '0'
    );
\salida_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \salida[1]_i_1_n_0\,
      Q => salida(1),
      R => '0'
    );
\salida_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \salida[2]_i_1_n_0\,
      Q => salida(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity qam16_mapeado_16QAM_I_0_0 is
  port (
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    rst : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 11 downto 0 );
    salida : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of qam16_mapeado_16QAM_I_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of qam16_mapeado_16QAM_I_0_0 : entity is "qam16_mapeado_16QAM_I_0_0,mapeado_16QAM_I,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of qam16_mapeado_16QAM_I_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of qam16_mapeado_16QAM_I_0_0 : entity is "mapeado_16QAM_I,Vivado 2017.4";
end qam16_mapeado_16QAM_I_0_0;

architecture STRUCTURE of qam16_mapeado_16QAM_I_0_0 is
  signal \^salida\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 192000000, PHASE 0.000, CLK_DOMAIN qam16_clk";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
  salida(7) <= \^salida\(2);
  salida(6) <= \^salida\(2);
  salida(5) <= \^salida\(2);
  salida(4) <= \^salida\(2);
  salida(3) <= \^salida\(2);
  salida(2 downto 0) <= \^salida\(2 downto 0);
U0: entity work.qam16_mapeado_16QAM_I_0_0_mapeado_16QAM_I
     port map (
      clk => clk,
      entrada(8 downto 6) => entrada(11 downto 9),
      entrada(5 downto 3) => entrada(7 downto 5),
      entrada(2 downto 0) => entrada(3 downto 1),
      rst => rst,
      salida(2 downto 0) => \^salida\(2 downto 0)
    );
end STRUCTURE;
