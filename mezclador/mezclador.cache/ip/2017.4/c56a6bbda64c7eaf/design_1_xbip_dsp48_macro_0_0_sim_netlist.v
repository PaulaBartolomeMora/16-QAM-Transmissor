// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan  3 13:03:42 2024
// Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : design_1_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tifbg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_xbip_dsp48_macro_0_0,xbip_dsp48_macro_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_15 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_15
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_15_viv i_synth
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
