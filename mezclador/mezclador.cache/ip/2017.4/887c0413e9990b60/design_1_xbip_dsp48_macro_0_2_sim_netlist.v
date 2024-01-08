// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Jan  5 14:12:19 2024
// Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_xbip_dsp48_macro_0_2_sim_netlist.v
// Design      : design_1_xbip_dsp48_macro_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tifbg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_xbip_dsp48_macro_0_2,xbip_dsp48_macro_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 192000000, PHASE 0.000, CLK_DOMAIN design_1_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} DATA_WIDTH 32}" *) output [31:0]P;

  wire [23:0]A;
  wire [7:0]B;
  wire CLK;
  wire [31:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "24" *) 
  (* C_B_WIDTH = "8" *) 
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
  (* C_P_MSB = "31" *) 
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

(* C_A_WIDTH = "24" *) (* C_B_WIDTH = "8" *) (* C_CONCAT_WIDTH = "48" *) 
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
(* C_P_MSB = "31" *) (* C_REG_CONFIG = "00000000000011000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
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
  input [7:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [31:0]P;
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
  wire [7:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [31:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "24" *) 
  (* C_B_WIDTH = "8" *) 
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
  (* C_P_MSB = "31" *) 
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
d3nzwXOYizwcYKfEhupQSudAT4OnHfE2vFNdX3AYpJKGMnXsCzBl5pdt/fEPgFlgNKgsqG7IB+DC
5DHUgBs04q8xLxS3d61QVGk66JPHA9Qfe/UUb+CxH8PAth6LsULTCH2Jn5Lg3KYMjbmRonk/0OR1
H6mTrgu/na4hJTl2We9ycqiFspEbleaKzTrCoGLtVaA1ljI+PHDPhirk+fwfBwgW88B7K2vxk6BT
1A8D/kXldWWYGn5SYFUrhpr8MZfBTZZJLGhMY3jZ8JNhUnlFVEVO4vuTT8HvysIEzx+J/nJJgFB0
FN2y1BO60PVExShqfLftLDvK2fEUvs39+uJoNg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qNdKXZxUo9VfXMubEdg7erb4PgnFNSDKXh9Beyhnlr0heD4m+ZuxftAYcTgam3NTaUJOfuD1rarL
H+AvIcRolUvyk7tf+8Dpp0ng29OZv/7d7e6D5Oomvq4CMX3CWeCWI11DJADbZ7w2Els8zO0GcPVY
mCDuub+9QKhBn/BZZmAhdfgxWd6Uj7x36RO32OgyQB8xgncoEG1sPrR+Vzo3rLs/Ok6kND9Xmc/X
1xclPYzB1C3M5qA+vPIWrCdQnFW5jVblpvxNJB+R03lfhMJ3ElFREa5fJcod4ctNgb/GN5oWy8wz
TNWKtFugdONQLfOuH3bacxbIRlsik+sraHAGCw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30336)
`pragma protect data_block
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
qQ/7RbqWEHJKIpbn
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
