onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xbip_utils_v3_0_8 -L axi_utils_v2_0_4 -L fir_compiler_v7_2_10 -L secureip -lib xil_defaultlib xil_defaultlib.qam16

do {wave.do}

view wave
view structure
view signals

do {qam16.udo}

run -all

quit -force
