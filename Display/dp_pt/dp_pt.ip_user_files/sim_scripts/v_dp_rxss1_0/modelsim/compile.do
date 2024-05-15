vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/displayport_v8_1_7
vlib modelsim_lib/msim/lib_pkg_v1_0_3
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_iic_v2_1_5
vlib modelsim_lib/msim/xlconstant_v1_1_8
vlib modelsim_lib/msim/proc_sys_reset_v5_0_14
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_29
vlib modelsim_lib/msim/axi_vip_v1_1_15
vlib modelsim_lib/msim/dp_videoaxi4s_bridge_v1_0_2

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap displayport_v8_1_7 modelsim_lib/msim/displayport_v8_1_7
vmap lib_pkg_v1_0_3 modelsim_lib/msim/lib_pkg_v1_0_3
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_iic_v2_1_5 modelsim_lib/msim/axi_iic_v2_1_5
vmap xlconstant_v1_1_8 modelsim_lib/msim/xlconstant_v1_1_8
vmap proc_sys_reset_v5_0_14 modelsim_lib/msim/proc_sys_reset_v5_0_14
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_29 modelsim_lib/msim/axi_register_slice_v2_1_29
vmap axi_vip_v1_1_15 modelsim_lib/msim/axi_vip_v1_1_15
vmap dp_videoaxi4s_bridge_v1_0_2 modelsim_lib/msim/dp_videoaxi4s_bridge_v1_0_2

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0/src/rs_decoder_v.v" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0/src/bd_ac35_0_dp_0_rx_phy.v" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/synth/bd_ac35_0_dp_0_core_top.v" \

vcom -work displayport_v8_1_7  -93  \
"../../../ipstatic/hdl/displayport_v8_1_rfs.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0/src/verilog/displayport_v8_1_7_rx_vid_fifo.v" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0/src/verilog/displayport_v8_1_7_rx_audio_fifo.v" \

vlog -work displayport_v8_1_7  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/displayport_v8_1_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0/src/verilog/displayport_v8_1_7_rx_8b10b_fifo.v" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/synth/bd_ac35_0_dp_0_dport_wrapper.v" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/sim/bd_ac35_0_dp_0.v" \

vcom -work lib_pkg_v1_0_3  -93  \
"../../../ipstatic/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../ipstatic/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_1_5  -93  \
"../../../ipstatic/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_1/sim/bd_ac35_0_iic_0.vhd" \

vlog -work xlconstant_v1_1_8  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_0/sim/bd_b9b6_one_0.v" \

vcom -work proc_sys_reset_v5_0_14  -93  \
"../../../ipstatic/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_1/sim/bd_b9b6_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../ipstatic/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_2/sim/bd_b9b6_arinsw_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_3/sim/bd_b9b6_rinsw_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_4/sim/bd_b9b6_awinsw_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_5/sim/bd_b9b6_winsw_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_6/sim/bd_b9b6_binsw_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_7/sim/bd_b9b6_aroutsw_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_8/sim/bd_b9b6_routsw_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_9/sim/bd_b9b6_awoutsw_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_10/sim/bd_b9b6_woutsw_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_11/sim/bd_b9b6_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_12/sim/bd_b9b6_arni_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_13/sim/bd_b9b6_rni_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_14/sim/bd_b9b6_awni_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_15/sim/bd_b9b6_wni_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_16/sim/bd_b9b6_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_17/sim/bd_b9b6_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_18/sim/bd_b9b6_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_19/sim/bd_b9b6_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_20/sim/bd_b9b6_s00a2s_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_21/sim/bd_b9b6_sarn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_22/sim/bd_b9b6_srn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_23/sim/bd_b9b6_sawn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_24/sim/bd_b9b6_swn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_25/sim/bd_b9b6_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_26/sim/bd_b9b6_m00s2a_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_27/sim/bd_b9b6_m00arn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_28/sim/bd_b9b6_m00rn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_29/sim/bd_b9b6_m00awn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_30/sim/bd_b9b6_m00wn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_31/sim/bd_b9b6_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_32/sim/bd_b9b6_m00e_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_33/sim/bd_b9b6_m01s2a_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_34/sim/bd_b9b6_m01arn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_35/sim/bd_b9b6_m01rn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_36/sim/bd_b9b6_m01awn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_37/sim/bd_b9b6_m01wn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_38/sim/bd_b9b6_m01bn_0.sv" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_39/sim/bd_b9b6_m01e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/sim/bd_b9b6.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_2/sim/bd_ac35_0_xbar_0.v" \

vlog -work dp_videoaxi4s_bridge_v1_0_2  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/dp_videoaxi4s_bridge_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" "+incdir+../../../ipstatic/hdl/sink" "+incdir+../../../ipstatic/hdl/source" "+incdir+../../../ipstatic/hdl/verilog" "+incdir+../../../ipstatic/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_3/sim/bd_ac35_0_vb1_0.v" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/sim/bd_ac35_0.v" \
"../../../../dp_pt.gen/sources_1/ip/v_dp_rxss1_0/sim/v_dp_rxss1_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

