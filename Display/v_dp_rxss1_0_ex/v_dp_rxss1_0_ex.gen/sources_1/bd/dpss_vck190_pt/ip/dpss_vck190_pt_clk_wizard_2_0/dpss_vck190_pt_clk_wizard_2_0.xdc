# file: dpss_vck190_pt_clk_wizard_2_0.xdc

# Input clock periods. These duplicate the values entered for the
# input clocks. You can use these to time your system. If required
# commented constraints can be used in the top level xdc 
#----------------------------------------------------------------
#
#
set_property PHASESHIFT_MODE LATENCY [get_cells -hierarchical MMCME5*]
