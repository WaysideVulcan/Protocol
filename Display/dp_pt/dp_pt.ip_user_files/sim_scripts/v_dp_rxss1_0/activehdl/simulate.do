transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+v_dp_rxss1_0  -L xilinx_vip -L xpm -L xil_defaultlib -L displayport_v8_1_7 -L lib_pkg_v1_0_3 -L lib_cdc_v1_0_2 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_5 -L axi_iic_v2_1_5 -L xlconstant_v1_1_8 -L proc_sys_reset_v5_0_14 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_29 -L axi_vip_v1_1_15 -L dp_videoaxi4s_bridge_v1_0_2 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.v_dp_rxss1_0 xil_defaultlib.glbl

do {v_dp_rxss1_0.udo}

run 1000ns

endsim

quit -force
