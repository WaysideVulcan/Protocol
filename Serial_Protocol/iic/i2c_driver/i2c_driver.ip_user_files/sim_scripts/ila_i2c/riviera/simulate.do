transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ila_i2c  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ila_i2c xil_defaultlib.glbl

do {ila_i2c.udo}

run 1000ns

endsim

quit -force
