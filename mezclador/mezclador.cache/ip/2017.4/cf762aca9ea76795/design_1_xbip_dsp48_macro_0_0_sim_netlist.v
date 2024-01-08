// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Jan  5 11:53:02 2024
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 192000000, PHASE 0.000, CLK_DOMAIN design_1_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 40} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} DATA_WIDTH 40}" *) output [39:0]P;

  wire [23:0]A;
  wire [15:0]B;
  wire CLK;
  wire [39:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "24" *) 
  (* C_B_WIDTH = "16" *) 
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
  (* C_P_MSB = "39" *) 
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

(* C_A_WIDTH = "24" *) (* C_B_WIDTH = "16" *) (* C_CONCAT_WIDTH = "48" *) 
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
(* C_P_MSB = "39" *) (* C_REG_CONFIG = "00000000000011000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
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
  input [15:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [39:0]P;
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
  wire [15:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [39:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "24" *) 
  (* C_B_WIDTH = "16" *) 
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
  (* C_P_MSB = "39" *) 
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
dCV5xAEKzW43KlB1pwR6e11qvHG16Ls2VO61rDpklr8x4eJChmCwU23bnWHMe483SX5eKrs3cjgy
cy9dPt7y4POxpaSwgscFPDY2a3bWK5VIrnrX2HJWUcAS0L9nRxF4t2xIgA4kSrb/HLwnSVf4M5SS
kdr4xmfbBGqd3/5/rNP6FfYyh5yp4Owh1AMTb2rrw7HDFJpbipEgLp/2xKG7MIM5wfz/IbSzu5MV
MJUQ8hQY9p6FwNkq4KwPaSfCGTfLA1kGDgBI+s7o83ioUZ2FDdMwKjplJUeWLEBwkFTT7deyDyDk
UHlgRXM32nKT4aolq5JpRWxHZdnCw5SLBl4jvw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lJciJ3iBw5C9WEqJkLbADnu/aJrrLReNJusrFdoXk4l8IW6gvvKSnfcSA98WbYl4G/0BHfDPSsBy
Q4QPqMvw+zhvnWstqWAF0BfIZtBvSrGJ7ZnrO07b/7qJOAGAh8ZMv8974dAG/FRWqaBIH6hCySc4
a+7UnfjgyE2j4fs0vMMR7SBbcRI6Srgtmu6McvU+yvJANThVwxRFnEQ8Y/tyf0mZYlGE75LLU2U5
avRS+Oi00zC1JHeof1gaUj1ugDDNelJM6Vjc8GbWOuUX35WQ8fiAm0ui3emBjneOtXrn769k8viD
hjWRp7raYS4Gtm295h+SNxuFQ0E2vaHMj8FmnA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29968)
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
