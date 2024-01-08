// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Jan  7 12:02:35 2024
// Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Paula/Downloads/mezclador/mezclador.srcs/sources_1/bd/design_1/ip/design_1_xbip_dsp48_macro_0_1/design_1_xbip_dsp48_macro_0_1_stub.v
// Design      : design_1_xbip_dsp48_macro_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tifbg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *)
module design_1_xbip_dsp48_macro_0_1(CLK, C, CONCAT, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,C[31:0],CONCAT[31:0],P[32:0]" */;
  input CLK;
  input [31:0]C;
  input [31:0]CONCAT;
  output [32:0]P;
endmodule
