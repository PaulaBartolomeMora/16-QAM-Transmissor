vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xbip_utils_v3_0_8
vlib modelsim_lib/msim/axi_utils_v2_0_4
vlib modelsim_lib/msim/fir_compiler_v7_2_10

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xbip_utils_v3_0_8 modelsim_lib/msim/xbip_utils_v3_0_8
vmap axi_utils_v2_0_4 modelsim_lib/msim/axi_utils_v2_0_4
vmap fir_compiler_v7_2_10 modelsim_lib/msim/fir_compiler_v7_2_10

vcom -work xil_defaultlib -64 -93 \
"../../../bd/qam16/ip/qam16_mapeado_16QAM_Q_0_0/sim/qam16_mapeado_16QAM_Q_0_0.vhd" \
"../../../bd/qam16/ip/qam16_mapeado_16QAM_I_0_0/sim/qam16_mapeado_16QAM_I_0_0.vhd" \

vcom -work xbip_utils_v3_0_8 -64 -93 \
"../../../../map_qam.srcs/sources_1/bd/qam16/ipshared/4173/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_4 -64 -93 \
"../../../../map_qam.srcs/sources_1/bd/qam16/ipshared/4575/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_10 -64 -93 \
"../../../../map_qam.srcs/sources_1/bd/qam16/ipshared/8a01/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/qam16/ip/qam16_fir_compiler_0_0/sim/qam16_fir_compiler_0_0.vhd" \
"../../../bd/qam16/ip/qam16_fir_compiler_0_1/sim/qam16_fir_compiler_0_1.vhd" \
"../../../bd/qam16/sim/qam16.vhd" \

