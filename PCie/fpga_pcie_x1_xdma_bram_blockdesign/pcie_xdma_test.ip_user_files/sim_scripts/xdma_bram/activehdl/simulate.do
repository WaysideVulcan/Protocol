transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+xdma_bram  -L xilinx_vip -L xpm -L xil_defaultlib -L blk_mem_gen_v8_4_7 -L xdma_v4_1_26 -L axi_bram_ctrl_v4_1_9 -L xlconstant_v1_1_8 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xdma_bram xil_defaultlib.glbl

do {xdma_bram.udo}

run 1000ns

endsim

quit -force
