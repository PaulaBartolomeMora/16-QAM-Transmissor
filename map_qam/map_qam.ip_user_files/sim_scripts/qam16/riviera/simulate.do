onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+qam16 -L xil_defaultlib -L xbip_utils_v3_0_8 -L axi_utils_v2_0_4 -L fir_compiler_v7_2_10 -L secureip -O5 xil_defaultlib.qam16

do {wave.do}

view wave
view structure

do {qam16.udo}

run -all

endsim

quit -force
