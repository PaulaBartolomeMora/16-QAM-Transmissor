// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan  3 13:03:42 2024
// Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_xbip_dsp48_macro_0_2 -prefix
//               design_1_xbip_dsp48_macro_0_2_ design_1_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : design_1_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tifbg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_xbip_dsp48_macro_0_0,xbip_dsp48_macro_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_xbip_dsp48_macro_0_2
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
  design_1_xbip_dsp48_macro_0_2_xbip_dsp48_macro_v3_0_15 U0
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
(* downgradeipidentifiedwarnings = "yes" *) 
module design_1_xbip_dsp48_macro_0_2_xbip_dsp48_macro_v3_0_15
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
  design_1_xbip_dsp48_macro_0_2_xbip_dsp48_macro_v3_0_15_viv i_synth
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
Tv6whQ3DJ0IBYTZ4TywpkOigMntYIn+wdsReJmwsDygUstblTmdgCdLXIgqib7ojtyYk9llbx0/h
rYmbSaw24Lb1Yeqh9zimX7oErmYIIp+/DH6Js0nhey+iKKTWvQsOKLrHXX/NGPpPSCx1g75kjoQ5
WweJksJR+cGBq8R0ldvt08gcgYsrV822qz2jN/F9mWT3/0QOcO5JL7dotZT4S3z3mDQLBlefaQMF
5dSIneeDUZJX2Aic8YEZn/xtRLJNo9Sf8/6/FmGGLw5sA+xN7nG/EosW8+BFJR6SYkKy+NEpA1/D
Q3i9zEzTPjcWbrWEX5++6kJKvoRyGq/uMVYGsQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VQusGJVf6MF2laEPObGyYTf3SsIi9SA80TqnV/5vxJ9f/U0UROVmoUmHsV2jBbPQtg6lz8SPEti8
ivnMfoCqzSDKpD2UfYYj/3lhOtd+4rMVZMZ8MiC/HvE5UkCKZI5LmULvXMZlngaM3+3dci19Bqxf
Gksst8t50Clb4XTeMQxRUAWVF40LsG7JPkojHSjiaJj2LBs602/AdHMv8Rr6NoRacFZ0XawpphM9
uS7CrcGZUN9EV8F+I3oUYe0rlPVMAco9SKv/HjkmYpfyIkt8WWDu9mD4Z8DezsJPo41P5jnBAMM9
IHdPOACBxW/Z4TXc5rR6vqnzqAIV2VQpskggUg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30208)
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
