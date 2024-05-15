
  set s_axis_aclk   [get_clocks -of [get_ports aclk]]
  set vid_clk   [get_clocks -of [get_ports vid_io_out_clk]]



 set_max_delay -from $s_axis_aclk -to [all_registers -clock $vid_clk] -datapath_only [expr min([join [get_property PERIOD $vid_clk] ,])]
 set_max_delay -from $vid_clk -to [all_registers -clock $s_axis_aclk] -datapath_only [expr min([join [get_property PERIOD $s_axis_aclk] ,])]

##set fg_root   {inst/COUPLER_INST/FIFO_INST}
##set_max_delay -from [get_cells ${fg_root}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells ${fg_root}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $vid_clk]
##set_max_delay -from [get_cells ${fg_root}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells ${fg_root}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $s_axis_aclk]
