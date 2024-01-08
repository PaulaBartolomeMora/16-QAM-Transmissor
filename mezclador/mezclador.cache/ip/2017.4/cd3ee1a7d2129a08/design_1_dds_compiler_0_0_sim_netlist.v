// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Jan  5 11:52:59 2024
// Host        : DESKTOP-Q5AUOQS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dds_compiler_0_0_sim_netlist.v
// Design      : design_1_dds_compiler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tifbg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dds_compiler_0_0,dds_compiler_v6_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_15,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 192000000, PHASE 0.000, CLK_DOMAIN design_1_clk" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 192000000, PHASE 0.000, CLK_DOMAIN design_1_clk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 16} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_cosine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cosine} enabled {attribs {resolve_type generated dependency cosine_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency cosine_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency cosine_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} field_sine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value sine} enabled {attribs {resolve_type generated dependency sine_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency sine_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency sine_offset format long minimum {} maximum {}} value 8} real {fixed {fractwidth {attribs {resolve_type generated dependency sine_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}} TDATA_WIDTH 16 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 192000000, PHASE 0.000, CLK_DOMAIN design_1_clk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 28} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 28} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_phase_out {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value phase_out} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency phase_width format long minimum {} maximum {}} value 28} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency phase_fractwidth format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [31:0]m_axis_phase_tdata;

  wire aclk;
  wire aresetn;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [31:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "28" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "1" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "1000010101010101010101010101,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "2" *) 
  (* C_PHASE_OFFSET_VALUE = "10000000000000000000000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_15 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[27:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[27:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[27:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule

(* C_ACCUMULATOR_WIDTH = "28" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "1" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "1" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "1" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "0" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "4" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "16" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "32" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "1" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "2" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "8" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "1000010101010101010101010101,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "2" *) (* C_PHASE_OFFSET_VALUE = "10000000000000000000000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "1" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_15
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [0:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [15:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [31:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [27:0]debug_axi_pinc_in;
  output [27:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [27:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [15:0]m_axis_data_tdata;
  wire [27:0]\^m_axis_phase_tdata ;
  wire m_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [30:27]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[27] = \<const0> ;
  assign debug_axi_pinc_in[26] = \<const0> ;
  assign debug_axi_pinc_in[25] = \<const0> ;
  assign debug_axi_pinc_in[24] = \<const0> ;
  assign debug_axi_pinc_in[23] = \<const0> ;
  assign debug_axi_pinc_in[22] = \<const0> ;
  assign debug_axi_pinc_in[21] = \<const0> ;
  assign debug_axi_pinc_in[20] = \<const0> ;
  assign debug_axi_pinc_in[19] = \<const0> ;
  assign debug_axi_pinc_in[18] = \<const0> ;
  assign debug_axi_pinc_in[17] = \<const0> ;
  assign debug_axi_pinc_in[16] = \<const0> ;
  assign debug_axi_pinc_in[15] = \<const0> ;
  assign debug_axi_pinc_in[14] = \<const0> ;
  assign debug_axi_pinc_in[13] = \<const0> ;
  assign debug_axi_pinc_in[12] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[27] = \<const0> ;
  assign debug_axi_poff_in[26] = \<const0> ;
  assign debug_axi_poff_in[25] = \<const0> ;
  assign debug_axi_poff_in[24] = \<const0> ;
  assign debug_axi_poff_in[23] = \<const0> ;
  assign debug_axi_poff_in[22] = \<const0> ;
  assign debug_axi_poff_in[21] = \<const0> ;
  assign debug_axi_poff_in[20] = \<const0> ;
  assign debug_axi_poff_in[19] = \<const0> ;
  assign debug_axi_poff_in[18] = \<const0> ;
  assign debug_axi_poff_in[17] = \<const0> ;
  assign debug_axi_poff_in[16] = \<const0> ;
  assign debug_axi_poff_in[15] = \<const0> ;
  assign debug_axi_poff_in[14] = \<const0> ;
  assign debug_axi_poff_in[13] = \<const0> ;
  assign debug_axi_poff_in[12] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[27] = \<const0> ;
  assign debug_phase[26] = \<const0> ;
  assign debug_phase[25] = \<const0> ;
  assign debug_phase[24] = \<const0> ;
  assign debug_phase[23] = \<const0> ;
  assign debug_phase[22] = \<const0> ;
  assign debug_phase[21] = \<const0> ;
  assign debug_phase[20] = \<const0> ;
  assign debug_phase[19] = \<const0> ;
  assign debug_phase[18] = \<const0> ;
  assign debug_phase[17] = \<const0> ;
  assign debug_phase[16] = \<const0> ;
  assign debug_phase[15] = \<const0> ;
  assign debug_phase[14] = \<const0> ;
  assign debug_phase[13] = \<const0> ;
  assign debug_phase[12] = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_missing = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_data_tvalid = m_axis_phase_tvalid;
  assign m_axis_phase_tdata[31] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[30] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[29] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[28] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[27:0] = \^m_axis_phase_tdata [27:0];
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign s_axis_config_tready = \<const1> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUMULATOR_WIDTH = "28" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "1" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "1000010101010101010101010101,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "2" *) 
  (* C_PHASE_OFFSET_VALUE = "10000000000000000000000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_15_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(aresetn),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[27:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[27:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[27:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_phase_tvalid),
        .m_axis_phase_tdata({\^m_axis_phase_tdata [27],NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[30:27],\^m_axis_phase_tdata [26:0]}),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
R7Su66EFP3j7HdSRwT0ufavHZ21RJuR7GdMa5N1qrx05vZRLzNZT/TrlIe3c6DsFCenpiZCD2noZ
QAoR4Rt+mA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CMEJWch+GbdZ7DIDA14J94rfET0XyGxfytAfvkgCwK+buy8C6yPuTyczckBiUAmLYwq3N0YLZZjn
gsyXn6e48OgTdLuKlj0b1I+R+nOfWP/cHyUHpk91Upohu0q4i+T1Z7YlZ2KevK2O/yOn6S3pNXlM
CA1hIxQSQLLJQcJjXBI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IDWChuOHJQwebqfYcE88tSCCIBnxLv1aLHU6OnUVlxJuAYH1Wr0uPmJkkVb7CXm2iZXQx/jo6XaT
TumCKxTZIL3ET0tLNKmedouL0GaXfUzXVCSzEoTXiWf2gNPQB6+v0sryyUdggn9CbJglWE9UkluW
rCPI7feYIVKqODl/+/XlmC+0ONTNrMlZjktMivGmmfgFiOaVxlj7ZiVhYDRk2pmK7N0SbS8Yhqtp
tu4XIZyivSAfozOEYzRk3aC5YLPqYEODky8fadXC0TifmV1/9ihpE9MdNVbsAfiU6jAuYaPtixy1
eWfPyz8p770Y8aO4Ymmlv6Cov/zwD1Zr7rP3ng==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D4tWnXwgYbtbYBATOz3rKT5u236p/210UA0/0NawJUvRuLLRIOY863EXCqmoNKd3cdAJGfRGO/fA
mX3MQnn8fORd5NV0Drcjtq7LVURk4LrUaNUiho8FoaaKgENLoHWz5zN6jL9cfE19cPf5q6X+HSoS
vhMpVULwvEeloyESsidHnjc6Leo2s08QmBHWIJ4gX6Y353OK7qNS3bZaZnw5UMLbMBvsopLT0HMU
QgsF83OsAoA/LETx2kFpFT62GHW7Xr0WQupO68ddkWdncI1pQ1ry5DiS4IAcjHmDYTyo542wmUO5
kUoT65xdo6CgR0mBfndpvcIfOPFrzBLsA3X/8A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TYxxwxeYhuHcZvmvIoDp6PM6jwmqvK/EOpQJuzYEJwksrBgERfR0MxeEKttmbgtW3IAljWYtUY74
488K1yihiHHoprJ33R35ZxUze+TipXVo/GLAiCGp6aVvDPTACRhogMPXLJypmeRU1yO394pPbgS6
wC0P27Oimz3cJkJrwIhG7UV3FbbvFXVTh6Lp9wme459SE3zFnKsJYjUpffIirIVsuN+DETk1csWY
DA9UX9JySwER9tWjcgC7RtzEV1hjIG9WuwYm3zkOqr4FZ/dkK9PLm51AgWpaMXgB/7ws+/P8fkKm
QNdT6izgEuqxwJScjWNpExqD7cRIM9y2FibGuA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Y058Y7qqyKaMCwzJEnFzRJA1mSsdLWRJPV8jeagM24nQRyHL6Of41SQjwa7S6UfHPjaxh3kStD/R
iqFSj7BMeRnjDwKkql9QbQCQ1AEtG8kKMw6X1Sw8vQdkSSWaY8A0qHxlAj9yFFRWps0IUCT20y4r
a1FWV0KSxSpJrwls87U=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BkCcTwW7IOFCvnzvt27BUy3KHmy1QJwSQsGYOAQoWdJnp7bpQCB3MV/YrDTHZ6GeuEjTv+Y4jK1+
AUi7wPge8Y2zeEpQSTFjwsHrg0a6KicpWuoUxj9ZsRjp7lihT95V1Q0eAIg8YhlL39mGtTcQ5Vdp
7z8wKvjx++phq/T2pWg3qojhz3yoqaCG4uvKWuNn2R3f0YfPc7K1qQ8cRTBYuIfje99ZizVelHfv
/gPaALzJb7mtbJVe83NohlYy8IyL0cxXXClT+sW1XPYiN9k5NbywIoRmRDobstBVd3O4Ukd5mT3V
p/qjzuZHyCC/I/jJRQFyZvHI5rcbT8On+yp5MA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ADkbOCOWkH9zAXpY2GMkxazgK7AmvkWjMXi6Kv4cRZR+NPTzy4N6yeft48fjuzxlcU5ouJAsfhbp
4fw66sAR4lpjBnhpuQ7mlQ0DoWfWhMzo3Q3zOsNq/xy4q816+c7Ae53OyQREbo5gz7Rs6T/aIBU0
fqc6aJbKi77H/RyTu9wyj2GEZdHnvz3bpL67yjyEL7Z5Nl1r+jbHo0Rr4klxySyvo8Vwo/runrno
gdPTiC8UsvHRh+7PKBgzE0BCNqDHn0SKdrlxftzY5I6eOCjZmtYMr1x6wH+r8MiGWM+bZXtQMFQ0
HIyzzO23q3yFgRRQzMtV2JDM0ywo+sMesZaMlA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tMJtfoVCfcLNlimvDya6Vvd2dlk0gXSTbjjC4v1QjWmTp2DdjFQzb/4KddKpHtS8TZ8C5OWxlwfD
ahiSDzjI6TrTF9UN/QGG0ru3tt249OQeXIpC0hXzrNVvrRmjiv838fzVAIL1PXcvjH84MfsoMEjK
Dw/2N6Tz83O/+X/uNwEd6F5UXxPSRET+cPjajBPBzum2smoCGoRCSyxlNRoUXijokhvlpKGV3QG4
lKtbywBftjFqN1RUQ2pKe6oKidVLySi7nsslRotv4Taia+QtJpM2aGfiRWQ4EWpHVs+XXcGKULQd
ZiHdX+mJw5NWeSV4+s5LmFoKxid+e4bro2qppQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 60064)
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
