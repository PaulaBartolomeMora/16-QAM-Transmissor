vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xlslice_v1_0_1
vlib questa_lib/msim/fifo_generator_v13_2_1

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xlslice_v1_0_1 questa_lib/msim/xlslice_v1_0_1
vmap fifo_generator_v13_2_1 questa_lib/msim/fifo_generator_v13_2_1

vlog -work xil_defaultlib -64 -sv \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xlslice_v1_0_1 -64 \
"../../../../P1_fifo_xadc.srcs/sources_1/bd/design_1/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \

vlog -work fifo_generator_v13_2_1 -64 \
"../../../../P1_fifo_xadc.srcs/sources_1/bd/design_1/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -64 -93 \
"../../../../P1_fifo_xadc.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 \
"../../../../P1_fifo_xadc.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_fifo_generator_0_0/sim/design_1_fifo_generator_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

