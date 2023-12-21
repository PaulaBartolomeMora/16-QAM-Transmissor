// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Dec 21 09:21:56 2023
// Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {C:/Users/Paula/OneDrive - Universidad de
//               Alcala/Todo/map_qam_enviado/map_qam.srcs/sources_1/bd/qam16/ip/qam16_mapeado_16QAM_I_0_0/qam16_mapeado_16QAM_I_0_0_stub.v}
// Design      : qam16_mapeado_16QAM_I_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbg484-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mapeado_16QAM_I,Vivado 2017.4" *)
module qam16_mapeado_16QAM_I_0_0(clk, ce, rst, entrada, salida)
/* synthesis syn_black_box black_box_pad_pin="clk,ce,rst,entrada[11:0],salida[7:0]" */;
  input clk;
  input ce;
  input rst;
  input [11:0]entrada;
  output [7:0]salida;
endmodule
