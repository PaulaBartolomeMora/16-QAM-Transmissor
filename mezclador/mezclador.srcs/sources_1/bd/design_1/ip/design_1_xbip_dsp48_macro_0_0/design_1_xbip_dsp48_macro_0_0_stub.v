// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan  3 13:03:44 2024
// Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Paula/Downloads/mezclador/mezclador.srcs/sources_1/bd/design_1/ip/design_1_xbip_dsp48_macro_0_0/design_1_xbip_dsp48_macro_0_0_stub.v
// Design      : design_1_xbip_dsp48_macro_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tifbg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *)
module design_1_xbip_dsp48_macro_0_0(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[23:0],B[10:0],P[34:0]" */;
  input CLK;
  input [23:0]A;
  input [10:0]B;
  output [34:0]P;
endmodule
