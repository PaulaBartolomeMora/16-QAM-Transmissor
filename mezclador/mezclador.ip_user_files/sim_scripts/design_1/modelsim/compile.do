vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xbip_utils_v3_0_8
vlib modelsim_lib/msim/axi_utils_v2_0_4
vlib modelsim_lib/msim/xbip_pipe_v3_0_4
vlib modelsim_lib/msim/xbip_bram18k_v3_0_4
vlib modelsim_lib/msim/mult_gen_v12_0_13
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_4
vlib modelsim_lib/msim/dds_compiler_v6_0_15
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xbip_dsp48_macro_v3_0_15
vlib modelsim_lib/msim/xlslice_v1_0_1

vmap xbip_utils_v3_0_8 modelsim_lib/msim/xbip_utils_v3_0_8
vmap axi_utils_v2_0_4 modelsim_lib/msim/axi_utils_v2_0_4
vmap xbip_pipe_v3_0_4 modelsim_lib/msim/xbip_pipe_v3_0_4
vmap xbip_bram18k_v3_0_4 modelsim_lib/msim/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 modelsim_lib/msim/mult_gen_v12_0_13
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_4 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_4
vmap xbip_dsp48_multadd_v3_0_4 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_4
vmap dds_compiler_v6_0_15 modelsim_lib/msim/dds_compiler_v6_0_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xbip_dsp48_macro_v3_0_15 modelsim_lib/msim/xbip_dsp48_macro_v3_0_15
vmap xlslice_v1_0_1 modelsim_lib/msim/xlslice_v1_0_1

vcom -work xbip_utils_v3_0_8 -64 -93 \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/4173/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_4 -64 -93 \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/4575/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_4 -64 -93 \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/ee5e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_4 -64 -93 \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/9eb4/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_13 -64 -93 \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/257f/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_4 -64 -93 \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/7b8d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_4 -64 -93 \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/65ba/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_15 -64 -93 \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/0513/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dds_compiler_0_0/sim/design_1_dds_compiler_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vcom -work xbip_dsp48_macro_v3_0_15 -64 -93 \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/c423/hdl/xbip_dsp48_macro_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_xbip_dsp48_macro_0_0/sim/design_1_xbip_dsp48_macro_0_0.vhd" \
"../../../bd/design_1/ip/design_1_xbip_dsp48_macro_0_2/sim/design_1_xbip_dsp48_macro_0_2.vhd" \

vlog -work xlslice_v1_0_1 -64 -incr \
"../../../../mezclador.srcs/sources_1/bd/design_1/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

