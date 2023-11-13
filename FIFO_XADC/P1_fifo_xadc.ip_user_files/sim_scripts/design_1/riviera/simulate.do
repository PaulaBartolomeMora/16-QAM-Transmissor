onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_1 -L xil_defaultlib -L xpm -L xlslice_v1_0_1 -L fifo_generator_v13_2_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
