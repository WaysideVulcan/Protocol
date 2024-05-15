set_property SRC_FILE_INFO {cfile:C:/Vulcan/Protocol/PCie/fpga_pcie_x1_xdma_bram_blockdesign/fpga_top.xdc rfile:../../../fpga_top.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AR22  IOSTANDARD LVCMOS15 } [get_ports { o_led0 }];
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AY35  IOSTANDARD LVCMOS18  PULLUP true } [get_ports i_pcie_rstn]
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB8  [get_ports { i_pcie_refclkp }];
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W2   [get_ports { o_pcie_txp[0] }];
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y4   [get_ports { i_pcie_rxp[0] }];
