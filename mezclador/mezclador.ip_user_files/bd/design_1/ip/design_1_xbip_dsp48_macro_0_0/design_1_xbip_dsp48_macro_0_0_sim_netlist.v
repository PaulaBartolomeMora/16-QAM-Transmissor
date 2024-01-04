// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan  3 13:03:44 2024
// Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Paula/Downloads/mezclador/mezclador.srcs/sources_1/bd/design_1/ip/design_1_xbip_dsp48_macro_0_0/design_1_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : design_1_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tifbg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_xbip_dsp48_macro_0_0,xbip_dsp48_macro_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_xbip_dsp48_macro_0_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 192000000, PHASE 0.000, CLK_DOMAIN design_1_aclk_0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 35} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} DATA_WIDTH 35}" *) output [34:0]P;

  wire [23:0]A;
  wire [10:0]B;
  wire CLK;
  wire [34:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "24" *) 
  (* C_B_WIDTH = "11" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "34" *) 
  (* C_REG_CONFIG = "00000000000011000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_xbip_dsp48_macro_0_0_xbip_dsp48_macro_v3_0_15 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "24" *) (* C_B_WIDTH = "11" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "-1" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "34" *) (* C_REG_CONFIG = "00000000000011000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_15" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_xbip_dsp48_macro_0_0_xbip_dsp48_macro_v3_0_15
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [23:0]A;
  input [10:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [34:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [23:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [10:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [34:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "24" *) 
  (* C_B_WIDTH = "11" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "34" *) 
  (* C_REG_CONFIG = "00000000000011000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_xbip_dsp48_macro_0_0_xbip_dsp48_macro_v3_0_15_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(1'b0),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nBlnHi3Kp5ztG6vZNdMONLkWpVVpg2r7ZP2rdZEfioM4XUkRew1oDSrAozd60ivTx8PLiOPPRAJo
pOZd0llK5g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Kcs1MQe5BgqnN7tbrZMcEiZZSCl175bCFWu5jwqWj4RFDG/n9GjuiwAuZ9v2vQZcAxVE3h5w+TBc
Bk1lc9zc7T3tnbm4qpXepckPAqiTqMURQNO28XRRz5BSiTktDkY/dUGVSA0qxTdPGlkYZSpuFpl6
PjievZtLxEtp4cSEwJE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aG1w9h5Ae0N98iRQuCMUHQUwBA2KqP2Fbb/SCJOtosbKahOePVIWiIrkhbLMsr1/omYs/Q6fEj2G
uYHIEBLZLRANmjJt9kQu/jIzWAf0nK3OJkUCAMefyflw5y403PkpWIAHXqlArlaCVW2gWxzVxt9G
js0j3l7Y2dpahAMg2LgLgWyMj2rS0kjr+fbTwgci9As5Ndo6CDyXo7EcixOTvkWvqwxJaYFbtcFF
K1j0WC1jYCLSiEJ2ZB5/ODVnSmn3AWSksydgQ3iYMKpYPNlAwFN7t7HacZ95HxO8MGoNyjnDje35
EzrNZrAA4vUP8Y6En1JgkF6RLt8PJJfLc+wq+g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BYWKn+AL7Gth8aEXuzL+rpOrNP6Ug8Hc9TpmOLZLrPZ4boPFPd89qpRHOY6mfox3M09mZK4TuSx+
5DykxgtH7Gu2DHCqtg3Tg7eFTAzurR/EqXoPhuHQIzs5Y1T/5WlIb0c4l9CNWdc5TBVfbmKR+x4N
A259tw/6q69OtmAqFiB+p9GY8lyjNDWu07DJlxI2l6wSRYy8YqD7K1OrLRXxY6gaTqDWDXlcO+ia
T5/harPHjTiNAFO8U6YTfRQtNJUrOnNfSAnAtjrlegYGNcEl6u4sqYE/X/Pajk2n+1+KvJ6PR8L9
bdrCByV81f1z88nc1Twl6LUe54VQdfe5W+EOpQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iJnLIMkUEl7Btn7IVUeqK6xbyk9c7fsISctkfj2c6osS1GvgHXWHkJPpNPHTeIth7zUvkUlYB/Jd
M5kNK3leJJj5TaqOLOh+cyWqEGY64EruHImVJasbLaVn3LUh67wEEMFoKhP9/KjqLsL3oFrKnU4i
JzYtVgZoCfaHBaIyRC6wms7z/YKP2Khya0dzmYHMmbdm9k2rL27fVLJcCEMSO1Dsz2D/qXnCFI8T
NHnM3Fv/xF2jOhtDIDqWGakvXk7l+ddg95MJ+5A578jqVX81M0WJwbHlaIJIG5uwIzTI46+pYw0Z
4sgDMkrl/aXSFYB5PU2L4hhVeq7e6c0dqUOVSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sdiBszQspScY+UIwuaohSbs1PAZL6bemuOZlFLGklUXNsz7r1265PlclnSy9m0ilIWxY0HJkGEtl
Rs/zfRlF9Ag/CEiBQ4lStxiXa4cbOvNwkp9j1BXCYCAbMsw83x+ZvpyoQTXRfcBBvSAbtpFDJ7ar
qlJbO6erRjpDP373GIY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUV1ae8Aw6l0UtyVDuKmrMQwdVI8vrJTYSKwNJ+/x3fs7qy5B2fVzNE8tFRcie7NykwBpJV9lQNN
iNNcReVBjS/oh7txKer0RVLuw2jQCeQBSixWXwdIra9CsrIF5V2GUuY3dDh9ofaqsgbKSlDNLzzm
0lHhjAw4Nbk9kwoo5NP9xZYaLPCNo4Qqi0A9Px++Zu3V7DcbPDDDQnNEzgQhcN8ilscDyGVOeiHu
/xJbo1lLkpyrDciztvHYqwj9O/kSyF1PikDg8xEaOx1QQVvaz7r51DlXlPCpqCUyFGEeiIrPCMHf
8rf7t9DpvBEVPF3eaofCDfiW9vWmbfgffwtMYg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ebrw4wxXktn96IF65Nj1L/XjAthn0tFoiAW8R44UJ7ilziSLkFLGTRz7Ncmam43Mjv4OhBvqu3N7
6m7p3JGi6yQ1n3vVpuw1/5idvE7UN2AsvpoEwNhGAw4Jlls+96aHS4pfq1f/8oQKL71eoytsTzZ0
HdNvHHk79tTMgPqdi0B7jlvgXgUp91RD5M6h3gYuohhOylcgIt33sHmd0XYofWdVslp09XZm0asN
LZ2WHLpbajFw2UyXFCpV3GzDDncWOb7ONoMM1I0sGiDqh0+ShB5fJmBos9aQN5aDRDigLA0Wy06B
2FN4yn0MW6989+0my1kLWkyE4PcbkIYKZ0QHdg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m993b2r3YgUStw322KWoKGwsaQW2GWa3c/P4graEQ91DPUULfvwF4gT3RdkWhPhEcUx8oN4AOAqK
g+lQVrvEsJ7xpeo52MnHzBZpMUZVmB6IVTN8FtKDsEl+sidIZbp/TshiQtr3kIh/hUoCtZl14vGR
bc8mKw5Af4HRNpJq5HBmU4YW7s7yCD10jOz1iZpP/Wp2/hZ1mYTc1aw5b7lQy/mngmcaQ3xHjY2Z
YIYp05NDxJo0kuw89IJFcKpGlyEJdwti/A4XTj+MMT9u5KHgPjazwcYgM6hyap/XGTi5rVUnoFIE
s1XAMrgJDsSnR2ItRhwMUTCJImkhZA0oDKGIXQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30192)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
