// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Dec 21 09:21:56 2023
// Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Paula/OneDrive - Universidad de
//               Alcala/Todo/map_qam_enviado/map_qam.srcs/sources_1/bd/qam16/ip/qam16_mapeado_16QAM_Q_0_0/qam16_mapeado_16QAM_Q_0_0_sim_netlist.v}
// Design      : qam16_mapeado_16QAM_Q_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "qam16_mapeado_16QAM_Q_0_0,mapeado_16QAM_Q,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mapeado_16QAM_Q,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module qam16_mapeado_16QAM_Q_0_0
   (clk,
    ce,
    rst,
    entrada,
    salida);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 192000000, PHASE 0.000, CLK_DOMAIN qam16_clk" *) input clk;
  input ce;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input [11:0]entrada;
  output [7:0]salida;

  wire clk;
  wire [11:0]entrada;
  wire rst;
  wire [2:0]\^salida ;

  assign salida[7] = \^salida [2];
  assign salida[6] = \^salida [2];
  assign salida[5] = \^salida [2];
  assign salida[4] = \^salida [2];
  assign salida[3] = \^salida [2];
  assign salida[2:0] = \^salida [2:0];
  qam16_mapeado_16QAM_Q_0_0_mapeado_16QAM_Q U0
       (.clk(clk),
        .entrada({entrada[10:8],entrada[6:4],entrada[2:0]}),
        .rst(rst),
        .salida(\^salida ));
endmodule

(* ORIG_REF_NAME = "mapeado_16QAM_Q" *) 
module qam16_mapeado_16QAM_Q_0_0_mapeado_16QAM_Q
   (salida,
    rst,
    clk,
    entrada);
  output [2:0]salida;
  input rst;
  input clk;
  input [8:0]entrada;

  wire clk;
  wire [31:0]cont_32;
  wire cont_320_carry__0_n_0;
  wire cont_320_carry__0_n_1;
  wire cont_320_carry__0_n_2;
  wire cont_320_carry__0_n_3;
  wire cont_320_carry__0_n_4;
  wire cont_320_carry__0_n_5;
  wire cont_320_carry__0_n_6;
  wire cont_320_carry__0_n_7;
  wire cont_320_carry__1_n_0;
  wire cont_320_carry__1_n_1;
  wire cont_320_carry__1_n_2;
  wire cont_320_carry__1_n_3;
  wire cont_320_carry__1_n_4;
  wire cont_320_carry__1_n_5;
  wire cont_320_carry__1_n_6;
  wire cont_320_carry__1_n_7;
  wire cont_320_carry__2_n_0;
  wire cont_320_carry__2_n_1;
  wire cont_320_carry__2_n_2;
  wire cont_320_carry__2_n_3;
  wire cont_320_carry__2_n_4;
  wire cont_320_carry__2_n_5;
  wire cont_320_carry__2_n_6;
  wire cont_320_carry__2_n_7;
  wire cont_320_carry__3_n_0;
  wire cont_320_carry__3_n_1;
  wire cont_320_carry__3_n_2;
  wire cont_320_carry__3_n_3;
  wire cont_320_carry__3_n_4;
  wire cont_320_carry__3_n_5;
  wire cont_320_carry__3_n_6;
  wire cont_320_carry__3_n_7;
  wire cont_320_carry__4_n_0;
  wire cont_320_carry__4_n_1;
  wire cont_320_carry__4_n_2;
  wire cont_320_carry__4_n_3;
  wire cont_320_carry__4_n_4;
  wire cont_320_carry__4_n_5;
  wire cont_320_carry__4_n_6;
  wire cont_320_carry__4_n_7;
  wire cont_320_carry__5_n_0;
  wire cont_320_carry__5_n_1;
  wire cont_320_carry__5_n_2;
  wire cont_320_carry__5_n_3;
  wire cont_320_carry__5_n_4;
  wire cont_320_carry__5_n_5;
  wire cont_320_carry__5_n_6;
  wire cont_320_carry__5_n_7;
  wire cont_320_carry__6_n_2;
  wire cont_320_carry__6_n_3;
  wire cont_320_carry__6_n_5;
  wire cont_320_carry__6_n_6;
  wire cont_320_carry__6_n_7;
  wire cont_320_carry_n_0;
  wire cont_320_carry_n_1;
  wire cont_320_carry_n_2;
  wire cont_320_carry_n_3;
  wire cont_320_carry_n_4;
  wire cont_320_carry_n_5;
  wire cont_320_carry_n_6;
  wire cont_320_carry_n_7;
  wire \cont_32[10]_i_1_n_0 ;
  wire \cont_32[11]_i_1_n_0 ;
  wire \cont_32[12]_i_1_n_0 ;
  wire \cont_32[13]_i_1_n_0 ;
  wire \cont_32[14]_i_1_n_0 ;
  wire \cont_32[15]_i_1_n_0 ;
  wire \cont_32[16]_i_1_n_0 ;
  wire \cont_32[17]_i_1_n_0 ;
  wire \cont_32[18]_i_1_n_0 ;
  wire \cont_32[19]_i_1_n_0 ;
  wire \cont_32[1]_i_1_n_0 ;
  wire \cont_32[20]_i_1_n_0 ;
  wire \cont_32[21]_i_1_n_0 ;
  wire \cont_32[22]_i_1_n_0 ;
  wire \cont_32[23]_i_1_n_0 ;
  wire \cont_32[24]_i_1_n_0 ;
  wire \cont_32[25]_i_1_n_0 ;
  wire \cont_32[26]_i_1_n_0 ;
  wire \cont_32[27]_i_1_n_0 ;
  wire \cont_32[28]_i_1_n_0 ;
  wire \cont_32[29]_i_1_n_0 ;
  wire \cont_32[2]_i_1_n_0 ;
  wire \cont_32[30]_i_1_n_0 ;
  wire \cont_32[31]_i_1_n_0 ;
  wire \cont_32[3]_i_1_n_0 ;
  wire \cont_32[4]_i_1_n_0 ;
  wire \cont_32[5]_i_1_n_0 ;
  wire \cont_32[6]_i_1_n_0 ;
  wire \cont_32[7]_i_1_n_0 ;
  wire \cont_32[8]_i_1_n_0 ;
  wire \cont_32[9]_i_1_n_0 ;
  wire [0:0]cont_32_0;
  wire contador;
  wire contador0_carry__0_n_0;
  wire contador0_carry__0_n_1;
  wire contador0_carry__0_n_2;
  wire contador0_carry__0_n_3;
  wire contador0_carry__1_n_2;
  wire contador0_carry__1_n_3;
  wire contador0_carry_i_1__0_n_0;
  wire contador0_carry_i_1__1_n_0;
  wire contador0_carry_i_1_n_0;
  wire contador0_carry_i_2__0_n_0;
  wire contador0_carry_i_2__1_n_0;
  wire contador0_carry_i_2_n_0;
  wire contador0_carry_i_3__0_n_0;
  wire contador0_carry_i_3__1_n_0;
  wire contador0_carry_i_3_n_0;
  wire contador0_carry_i_4__0_n_2;
  wire contador0_carry_i_4__0_n_3;
  wire contador0_carry_i_4__1_n_0;
  wire contador0_carry_i_4_n_0;
  wire contador0_carry_i_5__0_n_0;
  wire contador0_carry_i_5__0_n_1;
  wire contador0_carry_i_5__0_n_2;
  wire contador0_carry_i_5__0_n_3;
  wire contador0_carry_i_5__1_n_0;
  wire contador0_carry_i_5__1_n_1;
  wire contador0_carry_i_5__1_n_2;
  wire contador0_carry_i_5__1_n_3;
  wire contador0_carry_i_5_n_0;
  wire contador0_carry_i_5_n_1;
  wire contador0_carry_i_5_n_2;
  wire contador0_carry_i_5_n_3;
  wire contador0_carry_i_6__0_n_0;
  wire contador0_carry_i_6__0_n_1;
  wire contador0_carry_i_6__0_n_2;
  wire contador0_carry_i_6__0_n_3;
  wire contador0_carry_i_6_n_0;
  wire contador0_carry_i_6_n_1;
  wire contador0_carry_i_6_n_2;
  wire contador0_carry_i_6_n_3;
  wire contador0_carry_i_7__0_n_0;
  wire contador0_carry_i_7__0_n_1;
  wire contador0_carry_i_7__0_n_2;
  wire contador0_carry_i_7__0_n_3;
  wire contador0_carry_i_7_n_0;
  wire contador0_carry_i_7_n_1;
  wire contador0_carry_i_7_n_2;
  wire contador0_carry_i_7_n_3;
  wire contador0_carry_n_0;
  wire contador0_carry_n_1;
  wire contador0_carry_n_2;
  wire contador0_carry_n_3;
  wire \contador[0]_i_1_n_0 ;
  wire [29:0]contador_reg;
  wire \contador_reg[0]_i_3_n_0 ;
  wire \contador_reg[0]_i_3_n_1 ;
  wire \contador_reg[0]_i_3_n_2 ;
  wire \contador_reg[0]_i_3_n_3 ;
  wire \contador_reg[0]_i_3_n_4 ;
  wire \contador_reg[0]_i_3_n_5 ;
  wire \contador_reg[0]_i_3_n_6 ;
  wire \contador_reg[0]_i_3_n_7 ;
  wire \contador_reg[12]_i_1_n_0 ;
  wire \contador_reg[12]_i_1_n_1 ;
  wire \contador_reg[12]_i_1_n_2 ;
  wire \contador_reg[12]_i_1_n_3 ;
  wire \contador_reg[12]_i_1_n_4 ;
  wire \contador_reg[12]_i_1_n_5 ;
  wire \contador_reg[12]_i_1_n_6 ;
  wire \contador_reg[12]_i_1_n_7 ;
  wire \contador_reg[16]_i_1_n_0 ;
  wire \contador_reg[16]_i_1_n_1 ;
  wire \contador_reg[16]_i_1_n_2 ;
  wire \contador_reg[16]_i_1_n_3 ;
  wire \contador_reg[16]_i_1_n_4 ;
  wire \contador_reg[16]_i_1_n_5 ;
  wire \contador_reg[16]_i_1_n_6 ;
  wire \contador_reg[16]_i_1_n_7 ;
  wire \contador_reg[20]_i_1_n_0 ;
  wire \contador_reg[20]_i_1_n_1 ;
  wire \contador_reg[20]_i_1_n_2 ;
  wire \contador_reg[20]_i_1_n_3 ;
  wire \contador_reg[20]_i_1_n_4 ;
  wire \contador_reg[20]_i_1_n_5 ;
  wire \contador_reg[20]_i_1_n_6 ;
  wire \contador_reg[20]_i_1_n_7 ;
  wire \contador_reg[24]_i_1_n_0 ;
  wire \contador_reg[24]_i_1_n_1 ;
  wire \contador_reg[24]_i_1_n_2 ;
  wire \contador_reg[24]_i_1_n_3 ;
  wire \contador_reg[24]_i_1_n_4 ;
  wire \contador_reg[24]_i_1_n_5 ;
  wire \contador_reg[24]_i_1_n_6 ;
  wire \contador_reg[24]_i_1_n_7 ;
  wire \contador_reg[28]_i_1_n_1 ;
  wire \contador_reg[28]_i_1_n_2 ;
  wire \contador_reg[28]_i_1_n_3 ;
  wire \contador_reg[28]_i_1_n_4 ;
  wire \contador_reg[28]_i_1_n_5 ;
  wire \contador_reg[28]_i_1_n_6 ;
  wire \contador_reg[28]_i_1_n_7 ;
  wire \contador_reg[4]_i_1_n_0 ;
  wire \contador_reg[4]_i_1_n_1 ;
  wire \contador_reg[4]_i_1_n_2 ;
  wire \contador_reg[4]_i_1_n_3 ;
  wire \contador_reg[4]_i_1_n_4 ;
  wire \contador_reg[4]_i_1_n_5 ;
  wire \contador_reg[4]_i_1_n_6 ;
  wire \contador_reg[4]_i_1_n_7 ;
  wire \contador_reg[8]_i_1_n_0 ;
  wire \contador_reg[8]_i_1_n_1 ;
  wire \contador_reg[8]_i_1_n_2 ;
  wire \contador_reg[8]_i_1_n_3 ;
  wire \contador_reg[8]_i_1_n_4 ;
  wire \contador_reg[8]_i_1_n_5 ;
  wire \contador_reg[8]_i_1_n_6 ;
  wire \contador_reg[8]_i_1_n_7 ;
  wire [31:30]contador_reg__0;
  wire data0;
  wire [8:0]entrada;
  wire [31:0]p_0_in;
  wire rst;
  wire [2:0]salida;
  wire \salida[0]_i_1_n_0 ;
  wire \salida[0]_i_2_n_0 ;
  wire \salida[1]_i_1_n_0 ;
  wire \salida[1]_i_2_n_0 ;
  wire \salida[1]_i_3_n_0 ;
  wire \salida[2]_i_10_n_0 ;
  wire \salida[2]_i_1_n_0 ;
  wire \salida[2]_i_2_n_0 ;
  wire \salida[2]_i_3_n_0 ;
  wire \salida[2]_i_4_n_0 ;
  wire \salida[2]_i_5_n_0 ;
  wire \salida[2]_i_6_n_0 ;
  wire \salida[2]_i_7_n_0 ;
  wire \salida[2]_i_8_n_0 ;
  wire \salida[2]_i_9_n_0 ;
  wire [3:2]NLW_cont_320_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cont_320_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_contador0_carry_O_UNCONNECTED;
  wire [3:0]NLW_contador0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_contador0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_contador0_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_contador0_carry_i_4__0_CO_UNCONNECTED;
  wire [3:3]NLW_contador0_carry_i_4__0_O_UNCONNECTED;
  wire [3:3]\NLW_contador_reg[28]_i_1_CO_UNCONNECTED ;

  CARRY4 cont_320_carry
       (.CI(1'b0),
        .CO({cont_320_carry_n_0,cont_320_carry_n_1,cont_320_carry_n_2,cont_320_carry_n_3}),
        .CYINIT(cont_32[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cont_320_carry_n_4,cont_320_carry_n_5,cont_320_carry_n_6,cont_320_carry_n_7}),
        .S(cont_32[4:1]));
  CARRY4 cont_320_carry__0
       (.CI(cont_320_carry_n_0),
        .CO({cont_320_carry__0_n_0,cont_320_carry__0_n_1,cont_320_carry__0_n_2,cont_320_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cont_320_carry__0_n_4,cont_320_carry__0_n_5,cont_320_carry__0_n_6,cont_320_carry__0_n_7}),
        .S(cont_32[8:5]));
  CARRY4 cont_320_carry__1
       (.CI(cont_320_carry__0_n_0),
        .CO({cont_320_carry__1_n_0,cont_320_carry__1_n_1,cont_320_carry__1_n_2,cont_320_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cont_320_carry__1_n_4,cont_320_carry__1_n_5,cont_320_carry__1_n_6,cont_320_carry__1_n_7}),
        .S(cont_32[12:9]));
  CARRY4 cont_320_carry__2
       (.CI(cont_320_carry__1_n_0),
        .CO({cont_320_carry__2_n_0,cont_320_carry__2_n_1,cont_320_carry__2_n_2,cont_320_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cont_320_carry__2_n_4,cont_320_carry__2_n_5,cont_320_carry__2_n_6,cont_320_carry__2_n_7}),
        .S(cont_32[16:13]));
  CARRY4 cont_320_carry__3
       (.CI(cont_320_carry__2_n_0),
        .CO({cont_320_carry__3_n_0,cont_320_carry__3_n_1,cont_320_carry__3_n_2,cont_320_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cont_320_carry__3_n_4,cont_320_carry__3_n_5,cont_320_carry__3_n_6,cont_320_carry__3_n_7}),
        .S(cont_32[20:17]));
  CARRY4 cont_320_carry__4
       (.CI(cont_320_carry__3_n_0),
        .CO({cont_320_carry__4_n_0,cont_320_carry__4_n_1,cont_320_carry__4_n_2,cont_320_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cont_320_carry__4_n_4,cont_320_carry__4_n_5,cont_320_carry__4_n_6,cont_320_carry__4_n_7}),
        .S(cont_32[24:21]));
  CARRY4 cont_320_carry__5
       (.CI(cont_320_carry__4_n_0),
        .CO({cont_320_carry__5_n_0,cont_320_carry__5_n_1,cont_320_carry__5_n_2,cont_320_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cont_320_carry__5_n_4,cont_320_carry__5_n_5,cont_320_carry__5_n_6,cont_320_carry__5_n_7}),
        .S(cont_32[28:25]));
  CARRY4 cont_320_carry__6
       (.CI(cont_320_carry__5_n_0),
        .CO({NLW_cont_320_carry__6_CO_UNCONNECTED[3:2],cont_320_carry__6_n_2,cont_320_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cont_320_carry__6_O_UNCONNECTED[3],cont_320_carry__6_n_5,cont_320_carry__6_n_6,cont_320_carry__6_n_7}),
        .S({1'b0,cont_32[31:29]}));
  LUT6 #(
    .INIT(64'h00000000FFFFFDFF)) 
    \cont_32[0]_i_1 
       (.I0(\salida[2]_i_6_n_0 ),
        .I1(\salida[2]_i_5_n_0 ),
        .I2(cont_32[16]),
        .I3(cont_32[5]),
        .I4(\salida[2]_i_3_n_0 ),
        .I5(cont_32[0]),
        .O(cont_32_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[10]_i_1 
       (.I0(cont_320_carry__1_n_6),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[11]_i_1 
       (.I0(cont_320_carry__1_n_5),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[12]_i_1 
       (.I0(cont_320_carry__1_n_4),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[13]_i_1 
       (.I0(cont_320_carry__2_n_7),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[14]_i_1 
       (.I0(cont_320_carry__2_n_6),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[15]_i_1 
       (.I0(cont_320_carry__2_n_5),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[16]_i_1 
       (.I0(cont_320_carry__2_n_4),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[17]_i_1 
       (.I0(cont_320_carry__3_n_7),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[18]_i_1 
       (.I0(cont_320_carry__3_n_6),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[19]_i_1 
       (.I0(cont_320_carry__3_n_5),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[1]_i_1 
       (.I0(cont_320_carry_n_7),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[20]_i_1 
       (.I0(cont_320_carry__3_n_4),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[21]_i_1 
       (.I0(cont_320_carry__4_n_7),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[22]_i_1 
       (.I0(cont_320_carry__4_n_6),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[23]_i_1 
       (.I0(cont_320_carry__4_n_5),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[24]_i_1 
       (.I0(cont_320_carry__4_n_4),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[25]_i_1 
       (.I0(cont_320_carry__5_n_7),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[26]_i_1 
       (.I0(cont_320_carry__5_n_6),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[27]_i_1 
       (.I0(cont_320_carry__5_n_5),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[28]_i_1 
       (.I0(cont_320_carry__5_n_4),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[29]_i_1 
       (.I0(cont_320_carry__6_n_7),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[2]_i_1 
       (.I0(cont_320_carry_n_6),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[30]_i_1 
       (.I0(cont_320_carry__6_n_6),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[31]_i_1 
       (.I0(cont_320_carry__6_n_5),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[3]_i_1 
       (.I0(cont_320_carry_n_5),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[4]_i_1 
       (.I0(cont_320_carry_n_4),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[5]_i_1 
       (.I0(cont_320_carry__0_n_7),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[6]_i_1 
       (.I0(cont_320_carry__0_n_6),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[7]_i_1 
       (.I0(cont_320_carry__0_n_5),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[8]_i_1 
       (.I0(cont_320_carry__0_n_4),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \cont_32[9]_i_1 
       (.I0(cont_320_carry__1_n_7),
        .I1(\salida[2]_i_6_n_0 ),
        .I2(\salida[2]_i_5_n_0 ),
        .I3(cont_32[16]),
        .I4(cont_32[5]),
        .I5(\salida[2]_i_3_n_0 ),
        .O(\cont_32[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cont_32_0),
        .Q(cont_32[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[10]_i_1_n_0 ),
        .Q(cont_32[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[11]_i_1_n_0 ),
        .Q(cont_32[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[12]_i_1_n_0 ),
        .Q(cont_32[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[13]_i_1_n_0 ),
        .Q(cont_32[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[14]_i_1_n_0 ),
        .Q(cont_32[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[15]_i_1_n_0 ),
        .Q(cont_32[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[16]_i_1_n_0 ),
        .Q(cont_32[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[17]_i_1_n_0 ),
        .Q(cont_32[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[18]_i_1_n_0 ),
        .Q(cont_32[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[19]_i_1_n_0 ),
        .Q(cont_32[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[1]_i_1_n_0 ),
        .Q(cont_32[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[20]_i_1_n_0 ),
        .Q(cont_32[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[21]_i_1_n_0 ),
        .Q(cont_32[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[22]_i_1_n_0 ),
        .Q(cont_32[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[23]_i_1_n_0 ),
        .Q(cont_32[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[24]_i_1_n_0 ),
        .Q(cont_32[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[25]_i_1_n_0 ),
        .Q(cont_32[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[26]_i_1_n_0 ),
        .Q(cont_32[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[27]_i_1_n_0 ),
        .Q(cont_32[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[28]_i_1_n_0 ),
        .Q(cont_32[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[29]_i_1_n_0 ),
        .Q(cont_32[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[2]_i_1_n_0 ),
        .Q(cont_32[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[30]_i_1_n_0 ),
        .Q(cont_32[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[31]_i_1_n_0 ),
        .Q(cont_32[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[3]_i_1_n_0 ),
        .Q(cont_32[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[4]_i_1_n_0 ),
        .Q(cont_32[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[5]_i_1_n_0 ),
        .Q(cont_32[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[6]_i_1_n_0 ),
        .Q(cont_32[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[7]_i_1_n_0 ),
        .Q(cont_32[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[8]_i_1_n_0 ),
        .Q(cont_32[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cont_32_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cont_32[9]_i_1_n_0 ),
        .Q(cont_32[9]),
        .R(rst));
  CARRY4 contador0_carry
       (.CI(1'b0),
        .CO({contador0_carry_n_0,contador0_carry_n_1,contador0_carry_n_2,contador0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_contador0_carry_O_UNCONNECTED[3:0]),
        .S({contador0_carry_i_1_n_0,contador0_carry_i_2_n_0,contador0_carry_i_3_n_0,contador0_carry_i_4__1_n_0}));
  CARRY4 contador0_carry__0
       (.CI(contador0_carry_n_0),
        .CO({contador0_carry__0_n_0,contador0_carry__0_n_1,contador0_carry__0_n_2,contador0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_contador0_carry__0_O_UNCONNECTED[3:0]),
        .S({contador0_carry_i_1__0_n_0,contador0_carry_i_2__0_n_0,contador0_carry_i_3__0_n_0,contador0_carry_i_4_n_0}));
  CARRY4 contador0_carry__1
       (.CI(contador0_carry__0_n_0),
        .CO({NLW_contador0_carry__1_CO_UNCONNECTED[3],data0,contador0_carry__1_n_2,contador0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_contador0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,contador0_carry_i_1__1_n_0,contador0_carry_i_2__1_n_0,contador0_carry_i_3__1_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    contador0_carry_i_1
       (.I0(p_0_in[10]),
        .I1(p_0_in[11]),
        .I2(p_0_in[9]),
        .O(contador0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    contador0_carry_i_1__0
       (.I0(p_0_in[22]),
        .I1(p_0_in[23]),
        .I2(p_0_in[21]),
        .O(contador0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    contador0_carry_i_1__1
       (.I0(p_0_in[31]),
        .I1(p_0_in[30]),
        .O(contador0_carry_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    contador0_carry_i_2
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[6]),
        .O(contador0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    contador0_carry_i_2__0
       (.I0(p_0_in[19]),
        .I1(p_0_in[20]),
        .I2(p_0_in[18]),
        .O(contador0_carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    contador0_carry_i_2__1
       (.I0(p_0_in[28]),
        .I1(p_0_in[29]),
        .I2(p_0_in[27]),
        .O(contador0_carry_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    contador0_carry_i_3
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(p_0_in[3]),
        .O(contador0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    contador0_carry_i_3__0
       (.I0(p_0_in[16]),
        .I1(p_0_in[17]),
        .I2(p_0_in[15]),
        .O(contador0_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    contador0_carry_i_3__1
       (.I0(p_0_in[25]),
        .I1(p_0_in[26]),
        .I2(p_0_in[24]),
        .O(contador0_carry_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    contador0_carry_i_4
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[12]),
        .O(contador0_carry_i_4_n_0));
  CARRY4 contador0_carry_i_4__0
       (.CI(contador0_carry_i_5__1_n_0),
        .CO({NLW_contador0_carry_i_4__0_CO_UNCONNECTED[3:2],contador0_carry_i_4__0_n_2,contador0_carry_i_4__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_contador0_carry_i_4__0_O_UNCONNECTED[3],p_0_in[31:29]}),
        .S({1'b0,contador_reg__0,contador_reg[29]}));
  LUT3 #(
    .INIT(8'h04)) 
    contador0_carry_i_4__1
       (.I0(contador_reg[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .O(contador0_carry_i_4__1_n_0));
  CARRY4 contador0_carry_i_5
       (.CI(contador0_carry_i_6_n_0),
        .CO({contador0_carry_i_5_n_0,contador0_carry_i_5_n_1,contador0_carry_i_5_n_2,contador0_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[12:9]),
        .S(contador_reg[12:9]));
  CARRY4 contador0_carry_i_5__0
       (.CI(contador0_carry_i_6__0_n_0),
        .CO({contador0_carry_i_5__0_n_0,contador0_carry_i_5__0_n_1,contador0_carry_i_5__0_n_2,contador0_carry_i_5__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[24:21]),
        .S(contador_reg[24:21]));
  CARRY4 contador0_carry_i_5__1
       (.CI(contador0_carry_i_5__0_n_0),
        .CO({contador0_carry_i_5__1_n_0,contador0_carry_i_5__1_n_1,contador0_carry_i_5__1_n_2,contador0_carry_i_5__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[28:25]),
        .S(contador_reg[28:25]));
  CARRY4 contador0_carry_i_6
       (.CI(contador0_carry_i_7_n_0),
        .CO({contador0_carry_i_6_n_0,contador0_carry_i_6_n_1,contador0_carry_i_6_n_2,contador0_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:5]),
        .S(contador_reg[8:5]));
  CARRY4 contador0_carry_i_6__0
       (.CI(contador0_carry_i_7__0_n_0),
        .CO({contador0_carry_i_6__0_n_0,contador0_carry_i_6__0_n_1,contador0_carry_i_6__0_n_2,contador0_carry_i_6__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[20:17]),
        .S(contador_reg[20:17]));
  CARRY4 contador0_carry_i_7
       (.CI(1'b0),
        .CO({contador0_carry_i_7_n_0,contador0_carry_i_7_n_1,contador0_carry_i_7_n_2,contador0_carry_i_7_n_3}),
        .CYINIT(contador_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[4:1]),
        .S(contador_reg[4:1]));
  CARRY4 contador0_carry_i_7__0
       (.CI(contador0_carry_i_5_n_0),
        .CO({contador0_carry_i_7__0_n_0,contador0_carry_i_7__0_n_1,contador0_carry_i_7__0_n_2,contador0_carry_i_7__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[16:13]),
        .S(contador_reg[16:13]));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \contador[0]_i_1 
       (.I0(rst),
        .I1(\salida[2]_i_5_n_0 ),
        .I2(\salida[2]_i_4_n_0 ),
        .I3(data0),
        .I4(\salida[2]_i_3_n_0 ),
        .I5(\salida[2]_i_6_n_0 ),
        .O(\contador[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \contador[0]_i_2 
       (.I0(\salida[2]_i_6_n_0 ),
        .I1(\salida[2]_i_5_n_0 ),
        .I2(cont_32[16]),
        .I3(cont_32[5]),
        .I4(\salida[2]_i_3_n_0 ),
        .O(contador));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_4 
       (.I0(contador_reg[0]),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[0] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[0]_i_3_n_7 ),
        .Q(contador_reg[0]),
        .R(\contador[0]_i_1_n_0 ));
  CARRY4 \contador_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\contador_reg[0]_i_3_n_0 ,\contador_reg[0]_i_3_n_1 ,\contador_reg[0]_i_3_n_2 ,\contador_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\contador_reg[0]_i_3_n_4 ,\contador_reg[0]_i_3_n_5 ,\contador_reg[0]_i_3_n_6 ,\contador_reg[0]_i_3_n_7 }),
        .S({contador_reg[3:1],p_0_in[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[10] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[8]_i_1_n_5 ),
        .Q(contador_reg[10]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[11] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[8]_i_1_n_4 ),
        .Q(contador_reg[11]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[12] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[12]_i_1_n_7 ),
        .Q(contador_reg[12]),
        .R(\contador[0]_i_1_n_0 ));
  CARRY4 \contador_reg[12]_i_1 
       (.CI(\contador_reg[8]_i_1_n_0 ),
        .CO({\contador_reg[12]_i_1_n_0 ,\contador_reg[12]_i_1_n_1 ,\contador_reg[12]_i_1_n_2 ,\contador_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[12]_i_1_n_4 ,\contador_reg[12]_i_1_n_5 ,\contador_reg[12]_i_1_n_6 ,\contador_reg[12]_i_1_n_7 }),
        .S(contador_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[13] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[12]_i_1_n_6 ),
        .Q(contador_reg[13]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[14] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[12]_i_1_n_5 ),
        .Q(contador_reg[14]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[15] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[12]_i_1_n_4 ),
        .Q(contador_reg[15]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[16] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[16]_i_1_n_7 ),
        .Q(contador_reg[16]),
        .R(\contador[0]_i_1_n_0 ));
  CARRY4 \contador_reg[16]_i_1 
       (.CI(\contador_reg[12]_i_1_n_0 ),
        .CO({\contador_reg[16]_i_1_n_0 ,\contador_reg[16]_i_1_n_1 ,\contador_reg[16]_i_1_n_2 ,\contador_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[16]_i_1_n_4 ,\contador_reg[16]_i_1_n_5 ,\contador_reg[16]_i_1_n_6 ,\contador_reg[16]_i_1_n_7 }),
        .S(contador_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[17] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[16]_i_1_n_6 ),
        .Q(contador_reg[17]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[18] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[16]_i_1_n_5 ),
        .Q(contador_reg[18]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[19] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[16]_i_1_n_4 ),
        .Q(contador_reg[19]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[0]_i_3_n_6 ),
        .Q(contador_reg[1]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[20] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[20]_i_1_n_7 ),
        .Q(contador_reg[20]),
        .R(\contador[0]_i_1_n_0 ));
  CARRY4 \contador_reg[20]_i_1 
       (.CI(\contador_reg[16]_i_1_n_0 ),
        .CO({\contador_reg[20]_i_1_n_0 ,\contador_reg[20]_i_1_n_1 ,\contador_reg[20]_i_1_n_2 ,\contador_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[20]_i_1_n_4 ,\contador_reg[20]_i_1_n_5 ,\contador_reg[20]_i_1_n_6 ,\contador_reg[20]_i_1_n_7 }),
        .S(contador_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[21] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[20]_i_1_n_6 ),
        .Q(contador_reg[21]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[22] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[20]_i_1_n_5 ),
        .Q(contador_reg[22]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[23] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[20]_i_1_n_4 ),
        .Q(contador_reg[23]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[24] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[24]_i_1_n_7 ),
        .Q(contador_reg[24]),
        .R(\contador[0]_i_1_n_0 ));
  CARRY4 \contador_reg[24]_i_1 
       (.CI(\contador_reg[20]_i_1_n_0 ),
        .CO({\contador_reg[24]_i_1_n_0 ,\contador_reg[24]_i_1_n_1 ,\contador_reg[24]_i_1_n_2 ,\contador_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[24]_i_1_n_4 ,\contador_reg[24]_i_1_n_5 ,\contador_reg[24]_i_1_n_6 ,\contador_reg[24]_i_1_n_7 }),
        .S(contador_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[25] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[24]_i_1_n_6 ),
        .Q(contador_reg[25]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[26] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[24]_i_1_n_5 ),
        .Q(contador_reg[26]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[27] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[24]_i_1_n_4 ),
        .Q(contador_reg[27]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[28] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[28]_i_1_n_7 ),
        .Q(contador_reg[28]),
        .R(\contador[0]_i_1_n_0 ));
  CARRY4 \contador_reg[28]_i_1 
       (.CI(\contador_reg[24]_i_1_n_0 ),
        .CO({\NLW_contador_reg[28]_i_1_CO_UNCONNECTED [3],\contador_reg[28]_i_1_n_1 ,\contador_reg[28]_i_1_n_2 ,\contador_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[28]_i_1_n_4 ,\contador_reg[28]_i_1_n_5 ,\contador_reg[28]_i_1_n_6 ,\contador_reg[28]_i_1_n_7 }),
        .S({contador_reg__0,contador_reg[29:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[29] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[28]_i_1_n_6 ),
        .Q(contador_reg[29]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[2] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[0]_i_3_n_5 ),
        .Q(contador_reg[2]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[30] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[28]_i_1_n_5 ),
        .Q(contador_reg__0[30]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[31] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[28]_i_1_n_4 ),
        .Q(contador_reg__0[31]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[0]_i_3_n_4 ),
        .Q(contador_reg[3]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[4] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[4]_i_1_n_7 ),
        .Q(contador_reg[4]),
        .R(\contador[0]_i_1_n_0 ));
  CARRY4 \contador_reg[4]_i_1 
       (.CI(\contador_reg[0]_i_3_n_0 ),
        .CO({\contador_reg[4]_i_1_n_0 ,\contador_reg[4]_i_1_n_1 ,\contador_reg[4]_i_1_n_2 ,\contador_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[4]_i_1_n_4 ,\contador_reg[4]_i_1_n_5 ,\contador_reg[4]_i_1_n_6 ,\contador_reg[4]_i_1_n_7 }),
        .S(contador_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[5] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[4]_i_1_n_6 ),
        .Q(contador_reg[5]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[6] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[4]_i_1_n_5 ),
        .Q(contador_reg[6]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[7] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[4]_i_1_n_4 ),
        .Q(contador_reg[7]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[8] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[8]_i_1_n_7 ),
        .Q(contador_reg[8]),
        .R(\contador[0]_i_1_n_0 ));
  CARRY4 \contador_reg[8]_i_1 
       (.CI(\contador_reg[4]_i_1_n_0 ),
        .CO({\contador_reg[8]_i_1_n_0 ,\contador_reg[8]_i_1_n_1 ,\contador_reg[8]_i_1_n_2 ,\contador_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[8]_i_1_n_4 ,\contador_reg[8]_i_1_n_5 ,\contador_reg[8]_i_1_n_6 ,\contador_reg[8]_i_1_n_7 }),
        .S(contador_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[9] 
       (.C(clk),
        .CE(contador),
        .D(\contador_reg[8]_i_1_n_6 ),
        .Q(contador_reg[9]),
        .R(\contador[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \salida[0]_i_1 
       (.I0(\salida[0]_i_2_n_0 ),
        .I1(\salida[2]_i_3_n_0 ),
        .I2(\salida[2]_i_4_n_0 ),
        .I3(\salida[2]_i_5_n_0 ),
        .I4(\salida[2]_i_6_n_0 ),
        .I5(rst),
        .O(\salida[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA5A556A6AAAA56A6)) 
    \salida[0]_i_2 
       (.I0(\salida[1]_i_3_n_0 ),
        .I1(entrada[0]),
        .I2(contador_reg[1]),
        .I3(entrada[6]),
        .I4(contador_reg[0]),
        .I5(entrada[3]),
        .O(\salida[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \salida[1]_i_1 
       (.I0(\salida[1]_i_2_n_0 ),
        .I1(\salida[2]_i_3_n_0 ),
        .I2(\salida[2]_i_4_n_0 ),
        .I3(\salida[2]_i_5_n_0 ),
        .I4(\salida[2]_i_6_n_0 ),
        .I5(rst),
        .O(\salida[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    \salida[1]_i_2 
       (.I0(entrada[2]),
        .I1(contador_reg[1]),
        .I2(entrada[8]),
        .I3(contador_reg[0]),
        .I4(entrada[5]),
        .I5(\salida[1]_i_3_n_0 ),
        .O(\salida[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \salida[1]_i_3 
       (.I0(entrada[4]),
        .I1(contador_reg[0]),
        .I2(entrada[7]),
        .I3(contador_reg[1]),
        .I4(entrada[1]),
        .O(\salida[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \salida[2]_i_1 
       (.I0(\salida[2]_i_2_n_0 ),
        .I1(\salida[2]_i_3_n_0 ),
        .I2(\salida[2]_i_4_n_0 ),
        .I3(\salida[2]_i_5_n_0 ),
        .I4(\salida[2]_i_6_n_0 ),
        .I5(rst),
        .O(\salida[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \salida[2]_i_10 
       (.I0(cont_32[3]),
        .I1(cont_32[2]),
        .I2(cont_32[31]),
        .I3(cont_32[28]),
        .O(\salida[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \salida[2]_i_2 
       (.I0(entrada[5]),
        .I1(contador_reg[0]),
        .I2(entrada[8]),
        .I3(contador_reg[1]),
        .I4(entrada[2]),
        .O(\salida[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \salida[2]_i_3 
       (.I0(cont_32[0]),
        .I1(cont_32[9]),
        .I2(cont_32[22]),
        .I3(cont_32[23]),
        .I4(\salida[2]_i_7_n_0 ),
        .O(\salida[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \salida[2]_i_4 
       (.I0(cont_32[16]),
        .I1(cont_32[5]),
        .O(\salida[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \salida[2]_i_5 
       (.I0(cont_32[1]),
        .I1(cont_32[25]),
        .I2(cont_32[8]),
        .I3(cont_32[21]),
        .I4(\salida[2]_i_8_n_0 ),
        .O(\salida[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \salida[2]_i_6 
       (.I0(\salida[2]_i_9_n_0 ),
        .I1(\salida[2]_i_10_n_0 ),
        .I2(cont_32[10]),
        .I3(cont_32[7]),
        .I4(cont_32[14]),
        .I5(cont_32[6]),
        .O(\salida[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \salida[2]_i_7 
       (.I0(cont_32[19]),
        .I1(cont_32[18]),
        .I2(cont_32[4]),
        .I3(cont_32[24]),
        .O(\salida[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \salida[2]_i_8 
       (.I0(cont_32[20]),
        .I1(cont_32[17]),
        .I2(cont_32[13]),
        .I3(cont_32[12]),
        .O(\salida[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \salida[2]_i_9 
       (.I0(cont_32[30]),
        .I1(cont_32[29]),
        .I2(cont_32[11]),
        .I3(cont_32[27]),
        .I4(cont_32[15]),
        .I5(cont_32[26]),
        .O(\salida[2]_i_9_n_0 ));
  FDRE \salida_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\salida[0]_i_1_n_0 ),
        .Q(salida[0]),
        .R(1'b0));
  FDRE \salida_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\salida[1]_i_1_n_0 ),
        .Q(salida[1]),
        .R(1'b0));
  FDRE \salida_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\salida[2]_i_1_n_0 ),
        .Q(salida[2]),
        .R(1'b0));
endmodule
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
