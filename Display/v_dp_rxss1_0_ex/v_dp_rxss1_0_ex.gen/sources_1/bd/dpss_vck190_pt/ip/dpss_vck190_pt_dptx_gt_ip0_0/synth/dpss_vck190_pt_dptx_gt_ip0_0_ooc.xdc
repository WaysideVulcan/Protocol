
 #################################################################################
 ##
 ## dpss_vck190_pt_dptx_gt_ip0_0_ooc.xdc 
 ##
 #################################################################################

create_clock -period 10 [get_ports gt_ctrl_aclk]


## DP Protocol
create_clock -period 2.469 [get_ports gt_txusrclk]



