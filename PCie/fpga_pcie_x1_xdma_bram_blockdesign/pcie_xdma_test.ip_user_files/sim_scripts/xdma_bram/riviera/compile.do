transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/blk_mem_gen_v8_4_7
vlib riviera/xdma_v4_1_26
vlib riviera/axi_bram_ctrl_v4_1_9
vlib riviera/xlconstant_v1_1_8

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap blk_mem_gen_v8_4_7 riviera/blk_mem_gen_v8_4_7
vmap xdma_v4_1_26 riviera/xdma_v4_1_26
vmap axi_bram_ctrl_v4_1_9 riviera/axi_bram_ctrl_v4_1_9
vmap xlconstant_v1_1_8 riviera/xlconstant_v1_1_8

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_7 -l xdma_v4_1_26 -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/7f37/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_7 -l xdma_v4_1_26 -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/7f37/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_7 -l xdma_v4_1_26 -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_7vx.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_bram_7vx.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_bram_7vx_8k.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_bram_7vx_16k.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_bram_7vx_cpl.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_bram_7vx_rep.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_bram_7vx_rep_8k.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_bram_7vx_req.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_init_ctrl_7vx.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_pipe_lane.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_pipe_misc.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_pipe_pipeline.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_top.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_force_adapt.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pipe_clock.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pipe_drp.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pipe_eq.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pipe_rate.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pipe_reset.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pipe_sync.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pipe_user.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pipe_wrapper.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_qpll_drp.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_qpll_reset.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_qpll_wrapper.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_rxeq_scan.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_gt_wrapper.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_gt_top.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_gt_common.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_gtx_cpllpd_ovrd.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_tlp_tph_tbl_7vx.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/source/xdma_bram_xdma_0_0_pcie3_ip_pcie_3_0_7vx.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_0/sim/xdma_bram_xdma_0_0_pcie3_ip.v" \

vlog -work blk_mem_gen_v8_4_7  -incr -v2k5 "+incdir+../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/7f37/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_7 -l xdma_v4_1_26 -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 \
"../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/7f37/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_7 -l xdma_v4_1_26 -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_1/sim/xdma_v4_1_26_blk_mem_64_reg_be.v" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/ip_2/sim/xdma_v4_1_26_blk_mem_64_noreg_be.v" \

vlog -work xdma_v4_1_26  -incr "+incdir+../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/7f37/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_7 -l xdma_v4_1_26 -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 \
"../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/7f37/hdl/xdma_v4_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/7f37/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_7 -l xdma_v4_1_26 -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/xdma_v4_1/hdl/verilog/xdma_bram_xdma_0_0_dma_bram_wrap.sv" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/xdma_v4_1/hdl/verilog/xdma_bram_xdma_0_0_dma_bram_wrap_1024.sv" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/xdma_v4_1/hdl/verilog/xdma_bram_xdma_0_0_dma_bram_wrap_2048.sv" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/xdma_v4_1/hdl/verilog/xdma_bram_xdma_0_0_core_top.sv" \
"../../../bd/xdma_bram/ip/xdma_bram_xdma_0_0/sim/xdma_bram_xdma_0_0.sv" \

vcom -work axi_bram_ctrl_v4_1_9 -93  -incr \
"../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/5ed7/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/xdma_bram/ip/xdma_bram_axi_bram_ctrl_0_2/sim/xdma_bram_axi_bram_ctrl_0_2.vhd" \

vlog -work xlconstant_v1_1_8  -incr -v2k5 "+incdir+../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/7f37/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_7 -l xdma_v4_1_26 -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 \
"../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pcie_xdma_test.gen/sources_1/bd/xdma_bram/ipshared/7f37/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_7 -l xdma_v4_1_26 -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 \
"../../../bd/xdma_bram/ip/xdma_bram_xlconstant_0_0/sim/xdma_bram_xlconstant_0_0.v" \
"../../../bd/xdma_bram/ip/xdma_bram_axi_bram_ctrl_0_bram_0/sim/xdma_bram_axi_bram_ctrl_0_bram_0.v" \
"../../../bd/xdma_bram/sim/xdma_bram.v" \

vlog -work xil_defaultlib \
"glbl.v"

