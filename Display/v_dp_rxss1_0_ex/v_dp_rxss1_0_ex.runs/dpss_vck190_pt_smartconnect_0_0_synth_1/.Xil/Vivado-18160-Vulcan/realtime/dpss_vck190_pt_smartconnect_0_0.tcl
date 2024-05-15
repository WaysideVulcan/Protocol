# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.runs/dpss_vck190_pt_smartconnect_0_0_synth_1/.Xil/Vivado-18160-Vulcan/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xcvc1902-vsva2197-2MP-e-S
    source $::env(HRT_TCL_PATH)/rtSynthParallelPrep.tcl
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib
    rt::set_parameter defaultVhdlWorkLib xil_defaultlib

    rt::set_parameter loadVhdl2008Libs false
    rt::set_parameter loadVhdl2019Libs false
    rt::set_parameter deferParseUntilElab true
    rt::set_parameter sortHdlCommandLine true
    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include {
    c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/f0b6/hdl/verilog
    c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/35de/hdl/verilog
  } {
      C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv
      C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/bd53/hdl/sc_switchboard_v1_0_vl_rfs.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_4/synth/bd_5b39_arinsw_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_5/synth/bd_5b39_rinsw_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_6/synth/bd_5b39_awinsw_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_7/synth/bd_5b39_winsw_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_8/synth/bd_5b39_binsw_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_9/synth/bd_5b39_aroutsw_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_10/synth/bd_5b39_routsw_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_11/synth/bd_5b39_awoutsw_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_12/synth/bd_5b39_woutsw_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_13/synth/bd_5b39_boutsw_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/35de/hdl/sc_node_v1_0_vl_rfs.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_14/synth/bd_5b39_arni_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_15/synth/bd_5b39_rni_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_16/synth/bd_5b39_awni_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_17/synth/bd_5b39_wni_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_18/synth/bd_5b39_bni_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/c6b2/hdl/sc_mmu_v1_0_vl_rfs.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_19/synth/bd_5b39_s00mmu_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/abb8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_20/synth/bd_5b39_s00tr_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/7827/hdl/sc_si_converter_v1_0_vl_rfs.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_21/synth/bd_5b39_s00sic_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/79ce/hdl/sc_axi2sc_v1_0_vl_rfs.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_22/synth/bd_5b39_s00a2s_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_23/synth/bd_5b39_sarn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_24/synth/bd_5b39_srn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_25/synth/bd_5b39_sawn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_26/synth/bd_5b39_swn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_27/synth/bd_5b39_sbn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/ebf7/hdl/sc_sc2axi_v1_0_vl_rfs.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_28/synth/bd_5b39_m00s2a_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_29/synth/bd_5b39_m00arn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_30/synth/bd_5b39_m00rn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_31/synth/bd_5b39_m00awn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_32/synth/bd_5b39_m00wn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_33/synth/bd_5b39_m00bn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/6eea/hdl/sc_exit_v1_0_vl_rfs.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_34/synth/bd_5b39_m00e_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_35/synth/bd_5b39_m01s2a_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_36/synth/bd_5b39_m01arn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_37/synth/bd_5b39_m01rn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_38/synth/bd_5b39_m01awn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_39/synth/bd_5b39_m01wn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_40/synth/bd_5b39_m01bn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_41/synth/bd_5b39_m01e_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_42/synth/bd_5b39_m02s2a_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_43/synth/bd_5b39_m02arn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_44/synth/bd_5b39_m02rn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_45/synth/bd_5b39_m02awn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_46/synth/bd_5b39_m02wn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_47/synth/bd_5b39_m02bn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_48/synth/bd_5b39_m02e_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_49/synth/bd_5b39_m03s2a_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_50/synth/bd_5b39_m03arn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_51/synth/bd_5b39_m03rn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_52/synth/bd_5b39_m03awn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_53/synth/bd_5b39_m03wn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_54/synth/bd_5b39_m03bn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_55/synth/bd_5b39_m03e_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_56/synth/bd_5b39_m04s2a_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_57/synth/bd_5b39_m04arn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_58/synth/bd_5b39_m04rn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_59/synth/bd_5b39_m04awn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_60/synth/bd_5b39_m04wn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_61/synth/bd_5b39_m04bn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_62/synth/bd_5b39_m04e_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_63/synth/bd_5b39_m05s2a_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_64/synth/bd_5b39_m05arn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_65/synth/bd_5b39_m05rn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_66/synth/bd_5b39_m05awn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_67/synth/bd_5b39_m05wn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_68/synth/bd_5b39_m05bn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_69/synth/bd_5b39_m05e_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_70/synth/bd_5b39_m06s2a_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_71/synth/bd_5b39_m06arn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_72/synth/bd_5b39_m06rn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_73/synth/bd_5b39_m06awn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_74/synth/bd_5b39_m06wn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_75/synth/bd_5b39_m06bn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_76/synth/bd_5b39_m06e_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_77/synth/bd_5b39_m07s2a_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_78/synth/bd_5b39_m07arn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_79/synth/bd_5b39_m07rn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_80/synth/bd_5b39_m07awn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_81/synth/bd_5b39_m07wn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_82/synth/bd_5b39_m07bn_0.sv
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_83/synth/bd_5b39_m07e_0.sv
    }
      rt::read_verilog -include {
    c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/f0b6/hdl/verilog
    c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/35de/hdl/verilog
  } {
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_0/synth/bd_5b39_one_0.v
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/synth/bd_5b39.v
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/synth/dpss_vck190_pt_smartconnect_0_0.v
    }
      rt::read_vhdl -lib xpm C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::read_vhdl -lib lib_cdc_v1_0_2 c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd
      rt::read_vhdl -lib proc_sys_reset_v5_0_14 c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd
      rt::read_vhdl -lib xil_defaultlib {
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_1/synth/bd_5b39_psr0_0.vhd
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_2/synth/bd_5b39_psr_aclk_0.vhd
      c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_smartconnect_0_0/bd_0/ip/ip_3/synth/bd_5b39_psr_aclk1_0.vhd
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top dpss_vck190_pt_smartconnect_0_0
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter dataflowBusHighlighting false
    rt::set_parameter generateDataflowBusNetlist false
    rt::set_parameter dataFlowViewInElab false
    rt::set_parameter busViewFixBrokenConnections false
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.runs/dpss_vck190_pt_smartconnect_0_0_synth_1/.Xil/Vivado-18160-Vulcan/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
