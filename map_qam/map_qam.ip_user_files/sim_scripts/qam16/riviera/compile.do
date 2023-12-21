vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xbip_utils_v3_0_8
vlib riviera/axi_utils_v2_0_4
vlib riviera/fir_compiler_v7_2_10

vmap xil_defaultlib riviera/xil_defaultlib
vmap xbip_utils_v3_0_8 riviera/xbip_utils_v3_0_8
vmap axi_utils_v2_0_4 riviera/axi_utils_v2_0_4
vmap fir_compiler_v7_2_10 riviera/fir_compiler_v7_2_10

vcom -work xil_defaultlib -93 \
"../../../bd/qam16/ip/qam16_mapeado_16QAM_Q_0_0/sim/qam16_mapeado_16QAM_Q_0_0.vhd" \
"../../../bd/qam16/ip/qam16_mapeado_16QAM_I_0_0/sim/qam16_mapeado_16QAM_I_0_0.vhd" \

vcom -work xbip_utils_v3_0_8 -93 \
"../../../../map_qam.srcs/sources_1/bd/qam16/ipshared/4173/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_4 -93 \
"../../../../map_qam.srcs/sources_1/bd/qam16/ipshared/4575/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_10 -93 \
"../../../../map_qam.srcs/sources_1/bd/qam16/ipshared/8a01/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/qam16/ip/qam16_fir_compiler_0_0/sim/qam16_fir_compiler_0_0.vhd" \
"../../../bd/qam16/ip/qam16_fir_compiler_0_1/sim/qam16_fir_compiler_0_1.vhd" \
"../../../bd/qam16/sim/qam16.vhd" \

