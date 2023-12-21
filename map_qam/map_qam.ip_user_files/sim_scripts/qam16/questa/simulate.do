onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib qam16_opt

do {wave.do}

view wave
view structure
view signals

do {qam16.udo}

run -all

quit -force
