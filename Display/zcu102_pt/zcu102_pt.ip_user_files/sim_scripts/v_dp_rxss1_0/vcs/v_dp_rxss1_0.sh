#!/bin/bash -f
#**********************************************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Script generated by Vivado on Thu May 09 17:19:57 +0800 2024
# SW Build 4029153 on Fri Oct 13 20:14:34 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved. 
#
# Filename     : v_dp_rxss1_0.sh
# Simulator    : Synopsys Verilog Compiler Simulator
# Description  : Simulation script generated by export_simulation Tcl command
# Purpose      : Run 'compile', 'elaborate', 'simulate' steps for compiling, elaborating and simulating the
#                design. The script will copy the library mapping file from the compiled library directory,
#                create design library directories and library mappings in the mapping file.
#
# Usage        : v_dp_rxss1_0.sh
#                v_dp_rxss1_0.sh [-lib_map_path] [-step] [-keep_index] [-noclean_files]*
#                v_dp_rxss1_0.sh [-reset_run]
#                v_dp_rxss1_0.sh [-reset_log]
#                v_dp_rxss1_0.sh [-help]
#
#               * The -noclean_files switch is deprecated and will not peform any function (by default, the
#                 simulator generated files will not be removed unless -reset_run switch is used)
#
# Prerequisite : Before running export_simulation, you must first compile the AMD simulation library
#                using the 'compile_simlib' Tcl command (for more information, run 'compile_simlib -help'
#                command in the Vivado Tcl shell). After compiling the library, specify the -lib_map_path
#                switch with the directory path where the library is created while generating the script
#                with export_simulation.
#
#                Alternatively, you can set the library path by setting the following project property:-
#
#                 set_property compxlib.<simulator>_compiled_library_dir <path> [current_project]
#
#                You can also point to the simulation library by either setting the 'lib_map_path' global
#                variable in this script or specify it with the '-lib_map_path' switch while executing this
#                script (type 'v_dp_rxss1_0.sh -help' for more information).
#
#                Note: For pure RTL based designs, the -lib_map_path switch can be specified later with the
#                generated script, but if design is targetted for system simulation containing SystemC/C++/C
#                sources, then the library path MUST be specified upfront when calling export_simulation.
#
#                For more information, refer 'Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#**********************************************************************************************************

# catch pipeline exit status
set -Eeuo pipefail

# set vhdlan compile options
vhdlan_opts="-full64 -l .tmp_log"

# set vlogan compile options
vlogan_opts="-full64 -l .tmp_log"

# set vcs elaboration options
vcs_elab_opts="-full64 -t ps -licqueue -l elaborate.log"

# set vcs simulation options
vcs_sim_opts="-ucli -licqueue -l simulate.log "

# set design libraries
design_libs=(xilinx_vip xpm xil_defaultlib displayport_v8_1_7 lib_pkg_v1_0_3 lib_cdc_v1_0_2 axi_lite_ipif_v3_0_4 interrupt_control_v3_1_5 axi_iic_v2_1_5 xlconstant_v1_1_8 proc_sys_reset_v5_0_14 smartconnect_v1_0 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_29 axi_vip_v1_1_15 dp_videoaxi4s_bridge_v1_0_2)

# simulation root library directory
sim_lib_dir="vcs_lib"

# script info
echo -e "v_dp_rxss1_0.sh - Script generated by export_simulation (Vivado v2023.2 (64-bit)-id)\n"

# main steps
run()
{
  check_args $*
  setup
  if [[ ($b_step == 1) ]]; then
    case $step in
      "compile" )
       init_lib
       compile
      ;;
      "elaborate" )
       elaborate
      ;;
      "simulate" )
       simulate
      ;;
      * )
        echo -e "ERROR: Invalid or missing step '$step' (type \"./v_dp_rxss1_0.sh -help\" for more information)\n"
        exit 1
      esac
  else
    init_lib
    compile
    elaborate
    simulate
  fi
}

# RUN_STEP: <compile>
compile()
{
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee compile.log; cat .tmp_log > vlogan.log 2>/dev/null

  vlogan -work xpm $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work xpm $vhdlan_opts \
  "C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log > vhdlan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0/src/rs_decoder_v.v" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0/src/bd_ac35_0_dp_0_rx_phy.v" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/synth/bd_ac35_0_dp_0_core_top.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work displayport_v8_1_7 $vhdlan_opts \
  "../../../ipstatic/hdl/displayport_v8_1_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0/src/verilog/displayport_v8_1_7_rx_vid_fifo.v" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0/src/verilog/displayport_v8_1_7_rx_audio_fifo.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work displayport_v8_1_7 $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/displayport_v8_1_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/synth/bd_ac35_0_dp_0_dport_wrapper.v" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/sim/bd_ac35_0_dp_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work lib_pkg_v1_0_3 $vhdlan_opts \
  "../../../ipstatic/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
  "../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
  "../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work interrupt_control_v3_1_5 $vhdlan_opts \
  "../../../ipstatic/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_iic_v2_1_5 $vhdlan_opts \
  "../../../ipstatic/hdl/axi_iic_v2_1_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_1/sim/bd_ac35_0_iic_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work xlconstant_v1_1_8 $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/xlconstant_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_0/sim/bd_b9b6_one_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work proc_sys_reset_v5_0_14 $vhdlan_opts \
  "../../../ipstatic/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_1/sim/bd_b9b6_psr_aclk_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../ipstatic/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_2/sim/bd_b9b6_arinsw_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_3/sim/bd_b9b6_rinsw_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_4/sim/bd_b9b6_awinsw_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_5/sim/bd_b9b6_winsw_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_6/sim/bd_b9b6_binsw_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_7/sim/bd_b9b6_aroutsw_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_8/sim/bd_b9b6_routsw_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_9/sim/bd_b9b6_awoutsw_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_10/sim/bd_b9b6_woutsw_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_11/sim/bd_b9b6_boutsw_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/sc_node_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_12/sim/bd_b9b6_arni_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_13/sim/bd_b9b6_rni_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_14/sim/bd_b9b6_awni_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_15/sim/bd_b9b6_wni_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_16/sim/bd_b9b6_bni_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/sc_mmu_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_17/sim/bd_b9b6_s00mmu_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_18/sim/bd_b9b6_s00tr_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_19/sim/bd_b9b6_s00sic_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_20/sim/bd_b9b6_s00a2s_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_21/sim/bd_b9b6_sarn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_22/sim/bd_b9b6_srn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_23/sim/bd_b9b6_sawn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_24/sim/bd_b9b6_swn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_25/sim/bd_b9b6_sbn_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_26/sim/bd_b9b6_m00s2a_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_27/sim/bd_b9b6_m00arn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_28/sim/bd_b9b6_m00rn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_29/sim/bd_b9b6_m00awn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_30/sim/bd_b9b6_m00wn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_31/sim/bd_b9b6_m00bn_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/sc_exit_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_32/sim/bd_b9b6_m00e_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_33/sim/bd_b9b6_m01s2a_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_34/sim/bd_b9b6_m01arn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_35/sim/bd_b9b6_m01rn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_36/sim/bd_b9b6_m01awn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_37/sim/bd_b9b6_m01wn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_38/sim/bd_b9b6_m01bn_0.sv" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/ip/ip_39/sim/bd_b9b6_m01e_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_1/sim/bd_b9b6.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_register_slice_v2_1_29 $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_vip_v1_1_15 $vlogan_opts -sverilog +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_2/sim/bd_ac35_0_xbar_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work dp_videoaxi4s_bridge_v1_0_2 $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../ipstatic/hdl/dp_videoaxi4s_bridge_v1_0_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/example_design" +incdir+"../../../ipstatic/hdl/sink" +incdir+"../../../ipstatic/hdl/source" +incdir+"../../../ipstatic/hdl/verilog" +incdir+"../../../ipstatic/hdl" +incdir+"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_3/sim/bd_ac35_0_vb1_0.v" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/sim/bd_ac35_0.v" \
  "../../../../zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/sim/v_dp_rxss1_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
  glbl.v \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null
}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.v_dp_rxss1_0 xil_defaultlib.glbl -o v_dp_rxss1_0_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./v_dp_rxss1_0_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  # delete previous files for a clean rerun
  if [[ ($b_reset_run == 1) ]]; then
    reset_run
    echo -e "INFO: Simulation run files deleted.\n"
    exit 0
  fi

 # delete previous log files
  if [[ ($b_reset_log == 1) ]]; then
    reset_log
    echo -e "INFO: Simulation run log files deleted.\n"
    exit 0
  fi

  # add any setup/initialization commands here:-

  # <user specific commands>

}

# simulator index file/library directory processing
init_lib()
{
  if [[ ($b_keep_index == 1) ]]; then
    # keep previous design library mappings
    true
  else
    # define design library mappings
    create_lib_mappings
  fi

  if [[ ($b_keep_index == 1) ]]; then
    # do not recreate design library directories
    true
  else
    # create design library directories
    create_lib_dir
  fi
}

# define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($lib_map_path == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file


  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# create design library directory
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi
  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key v_dp_rxss1_0_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .tmp_log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log lib_sc.so 64 AN.DB csrc v_dp_rxss1_0_simv.daidir vcs_lib c.obj)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# delete generated log files from the previous run
reset_log()
{
  files_to_remove=(vlogan.log vhdlan.log compile.log elaborate.log simulate.log .tmp_log)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# check switch argument value
check_arg_value()
{
  if [[ ($1 == "-step") && (($2 != "compile") && ($2 != "elaborate") && ($2 != "simulate")) ]];then
    echo -e "ERROR: Invalid or missing step '$2' (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($1 == "-lib_map_path") && ($2 == "") ]];then
    echo -e "ERROR: Simulation library directory path not specified (type \"./v_dp_rxss1_0.sh -help\" for more information)\n"
    exit 1
  fi
}

# check command line arguments
check_args()
{
  arg_count=$#
  if [[ ("$#" == 1) && (("$1" == "-help") || ("$1" == "-h")) ]]; then
    usage
  fi
  while [[ "$#" -gt 0 ]]; do
    case $1 in
      -step)          check_arg_value $1 $2;step=$2;         b_step=1;         shift;;
      -lib_map_path)  check_arg_value $1 $2;lib_map_path=$2; b_lib_map_path=1; shift;;
      -gen_bypass)    b_gen_bypass=1    ;;
      -reset_run)     b_reset_run=1     ;;
      -reset_log)     b_reset_log=1     ;;
      -keep_index)    b_keep_index=1    ;;
      -noclean_files) b_noclean_files=1 ;;
      -help|-h)       ;;
      *) echo -e "ERROR: Invalid option specified '$1' (type "./top.sh -help" for more information)\n"; exit 1 ;;
    esac
     shift
  done

  # -reset_run is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_run == 1) ]]; then
    echo -e "ERROR: -reset_run switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -reset_log is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_log == 1) ]]; then
    echo -e "ERROR: -reset_log switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -keep_index is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_keep_index == 1) ]]; then
    echo -e "ERROR: -keep_index switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -noclean_files is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_noclean_files == 1) ]]; then
    echo -e "ERROR: -noclean_files switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi
}

# script usage
usage()
{
  msg="Usage: v_dp_rxss1_0.sh [-help]\n\
Usage: v_dp_rxss1_0.sh [-step]\n\
Usage: v_dp_rxss1_0.sh [-lib_map_path]\n\
Usage: v_dp_rxss1_0.sh [-reset_run]\n\
Usage: v_dp_rxss1_0.sh [-reset_log]\n\
Usage: v_dp_rxss1_0.sh [-keep_index]\n\
Usage: v_dp_rxss1_0.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-step <name>] -- Execute specified step (compile, elaborate, simulate)\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Delete simulator generated data files from the previous run and recreate simulator setup\n\
file/library mappings for a clean run. This switch will not execute steps defined in the script.\n\n\
NOTE: To keep simulator index file settings from the previous run, use the -keep_index switch\n\
NOTE: To regenerate simulator index file but keep the simulator generated files, use the -noclean_files switch\n\n\
[-reset_log] -- Delete simulator generated log files from the previous run\n\n\
[-keep_index] -- Keep simulator index file settings from the previous run\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run\n"
  echo -e $msg
  exit 0
}

# initialize globals
step=""
lib_map_path=""
b_step=0
b_lib_map_path=0
b_gen_bypass=0
b_reset_run=0
b_reset_log=0
b_keep_index=0
b_noclean_files=0

# launch script
run $*
