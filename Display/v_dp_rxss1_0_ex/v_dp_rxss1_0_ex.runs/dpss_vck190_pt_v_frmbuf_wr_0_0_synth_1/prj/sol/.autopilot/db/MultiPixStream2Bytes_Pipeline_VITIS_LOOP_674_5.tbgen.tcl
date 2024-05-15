set moduleName MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_5
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ pix_19 int 10 regular  }
	{ pix_18 int 10 regular  }
	{ pix_17 int 10 regular  }
	{ pix_16 int 10 regular  }
	{ pix_15 int 10 regular  }
	{ pix_14 int 10 regular  }
	{ pix_13 int 10 regular  }
	{ pix_12 int 10 regular  }
	{ trunc_ln658_2 int 12 regular  }
	{ bytePlanes_plane0 int 256 regular {fifo 1 volatile }  }
	{ icmp_ln662 int 1 regular  }
	{ cmp120_2 int 1 regular  }
	{ icmp int 1 regular  }
	{ sub117_cast int 12 regular  }
	{ cmp120 int 1 regular  }
	{ img int 120 regular {fifo 0 volatile }  }
	{ pix_47_out int 10 regular {pointer 1}  }
	{ pix_46_out int 10 regular {pointer 1}  }
	{ pix_45_out int 10 regular {pointer 1}  }
	{ pix_44_out int 10 regular {pointer 1}  }
	{ pix_43_out int 10 regular {pointer 1}  }
	{ pix_42_out int 10 regular {pointer 1}  }
	{ pix_41_out int 10 regular {pointer 1}  }
	{ pix_40_out int 10 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "pix_19", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_18", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_17", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_16", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_15", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_14", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_13", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_12", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln658_2", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes_plane0", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "icmp_ln662", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp120_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub117_cast", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "cmp120", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 120, "direction" : "READONLY"} , 
 	{ "Name" : "pix_47_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_46_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_45_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_44_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_43_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_42_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_41_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_40_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 120 signal 15 } 
	{ img_num_data_valid sc_in sc_lv 3 signal 15 } 
	{ img_fifo_cap sc_in sc_lv 3 signal 15 } 
	{ img_empty_n sc_in sc_logic 1 signal 15 } 
	{ img_read sc_out sc_logic 1 signal 15 } 
	{ pix_19 sc_in sc_lv 10 signal 0 } 
	{ pix_18 sc_in sc_lv 10 signal 1 } 
	{ pix_17 sc_in sc_lv 10 signal 2 } 
	{ pix_16 sc_in sc_lv 10 signal 3 } 
	{ pix_15 sc_in sc_lv 10 signal 4 } 
	{ pix_14 sc_in sc_lv 10 signal 5 } 
	{ pix_13 sc_in sc_lv 10 signal 6 } 
	{ pix_12 sc_in sc_lv 10 signal 7 } 
	{ trunc_ln658_2 sc_in sc_lv 12 signal 8 } 
	{ bytePlanes_plane0_din sc_out sc_lv 256 signal 9 } 
	{ bytePlanes_plane0_num_data_valid sc_in sc_lv 10 signal 9 } 
	{ bytePlanes_plane0_fifo_cap sc_in sc_lv 10 signal 9 } 
	{ bytePlanes_plane0_full_n sc_in sc_logic 1 signal 9 } 
	{ bytePlanes_plane0_write sc_out sc_logic 1 signal 9 } 
	{ icmp_ln662 sc_in sc_lv 1 signal 10 } 
	{ cmp120_2 sc_in sc_lv 1 signal 11 } 
	{ icmp sc_in sc_lv 1 signal 12 } 
	{ sub117_cast sc_in sc_lv 12 signal 13 } 
	{ cmp120 sc_in sc_lv 1 signal 14 } 
	{ pix_47_out sc_out sc_lv 10 signal 16 } 
	{ pix_47_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ pix_46_out sc_out sc_lv 10 signal 17 } 
	{ pix_46_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ pix_45_out sc_out sc_lv 10 signal 18 } 
	{ pix_45_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ pix_44_out sc_out sc_lv 10 signal 19 } 
	{ pix_44_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ pix_43_out sc_out sc_lv 10 signal 20 } 
	{ pix_43_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ pix_42_out sc_out sc_lv 10 signal 21 } 
	{ pix_42_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ pix_41_out sc_out sc_lv 10 signal 22 } 
	{ pix_41_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ pix_40_out sc_out sc_lv 10 signal 23 } 
	{ pix_40_out_ap_vld sc_out sc_logic 1 outvld 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":120, "type": "signal", "bundle":{"name": "img", "role": "dout" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "empty_n" }} , 
 	{ "name": "img_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "read" }} , 
 	{ "name": "pix_19", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_19", "role": "default" }} , 
 	{ "name": "pix_18", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_18", "role": "default" }} , 
 	{ "name": "pix_17", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_17", "role": "default" }} , 
 	{ "name": "pix_16", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_16", "role": "default" }} , 
 	{ "name": "pix_15", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_15", "role": "default" }} , 
 	{ "name": "pix_14", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_14", "role": "default" }} , 
 	{ "name": "pix_13", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_13", "role": "default" }} , 
 	{ "name": "pix_12", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_12", "role": "default" }} , 
 	{ "name": "trunc_ln658_2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "trunc_ln658_2", "role": "default" }} , 
 	{ "name": "bytePlanes_plane0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "din" }} , 
 	{ "name": "bytePlanes_plane0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "write" }} , 
 	{ "name": "icmp_ln662", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln662", "role": "default" }} , 
 	{ "name": "cmp120_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp120_2", "role": "default" }} , 
 	{ "name": "icmp", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp", "role": "default" }} , 
 	{ "name": "sub117_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sub117_cast", "role": "default" }} , 
 	{ "name": "cmp120", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp120", "role": "default" }} , 
 	{ "name": "pix_47_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_47_out", "role": "default" }} , 
 	{ "name": "pix_47_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_47_out", "role": "ap_vld" }} , 
 	{ "name": "pix_46_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_46_out", "role": "default" }} , 
 	{ "name": "pix_46_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_46_out", "role": "ap_vld" }} , 
 	{ "name": "pix_45_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_45_out", "role": "default" }} , 
 	{ "name": "pix_45_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_45_out", "role": "ap_vld" }} , 
 	{ "name": "pix_44_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_44_out", "role": "default" }} , 
 	{ "name": "pix_44_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_44_out", "role": "ap_vld" }} , 
 	{ "name": "pix_43_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_43_out", "role": "default" }} , 
 	{ "name": "pix_43_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_43_out", "role": "ap_vld" }} , 
 	{ "name": "pix_42_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_42_out", "role": "default" }} , 
 	{ "name": "pix_42_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_42_out", "role": "ap_vld" }} , 
 	{ "name": "pix_41_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_41_out", "role": "default" }} , 
 	{ "name": "pix_41_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_41_out", "role": "ap_vld" }} , 
 	{ "name": "pix_40_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_40_out", "role": "default" }} , 
 	{ "name": "pix_40_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_40_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pix_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln658_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes_plane0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_ln662", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp120_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub117_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp120", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_40_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_674_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_5 {
		pix_19 {Type I LastRead 0 FirstWrite -1}
		pix_18 {Type I LastRead 0 FirstWrite -1}
		pix_17 {Type I LastRead 0 FirstWrite -1}
		pix_16 {Type I LastRead 0 FirstWrite -1}
		pix_15 {Type I LastRead 0 FirstWrite -1}
		pix_14 {Type I LastRead 0 FirstWrite -1}
		pix_13 {Type I LastRead 0 FirstWrite -1}
		pix_12 {Type I LastRead 0 FirstWrite -1}
		trunc_ln658_2 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane0 {Type O LastRead -1 FirstWrite 4}
		icmp_ln662 {Type I LastRead 0 FirstWrite -1}
		cmp120_2 {Type I LastRead 0 FirstWrite -1}
		icmp {Type I LastRead 0 FirstWrite -1}
		sub117_cast {Type I LastRead 0 FirstWrite -1}
		cmp120 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 4 FirstWrite -1}
		pix_47_out {Type O LastRead -1 FirstWrite 1}
		pix_46_out {Type O LastRead -1 FirstWrite 1}
		pix_45_out {Type O LastRead -1 FirstWrite 1}
		pix_44_out {Type O LastRead -1 FirstWrite 1}
		pix_43_out {Type O LastRead -1 FirstWrite 1}
		pix_42_out {Type O LastRead -1 FirstWrite 1}
		pix_41_out {Type O LastRead -1 FirstWrite 1}
		pix_40_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "8195"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "8195"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pix_19 { ap_none {  { pix_19 in_data 0 10 } } }
	pix_18 { ap_none {  { pix_18 in_data 0 10 } } }
	pix_17 { ap_none {  { pix_17 in_data 0 10 } } }
	pix_16 { ap_none {  { pix_16 in_data 0 10 } } }
	pix_15 { ap_none {  { pix_15 in_data 0 10 } } }
	pix_14 { ap_none {  { pix_14 in_data 0 10 } } }
	pix_13 { ap_none {  { pix_13 in_data 0 10 } } }
	pix_12 { ap_none {  { pix_12 in_data 0 10 } } }
	trunc_ln658_2 { ap_none {  { trunc_ln658_2 in_data 0 12 } } }
	bytePlanes_plane0 { ap_fifo {  { bytePlanes_plane0_din fifo_data_in 1 256 }  { bytePlanes_plane0_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_plane0_fifo_cap fifo_update 0 10 }  { bytePlanes_plane0_full_n fifo_status 0 1 }  { bytePlanes_plane0_write fifo_port_we 1 1 } } }
	icmp_ln662 { ap_none {  { icmp_ln662 in_data 0 1 } } }
	cmp120_2 { ap_none {  { cmp120_2 in_data 0 1 } } }
	icmp { ap_none {  { icmp in_data 0 1 } } }
	sub117_cast { ap_none {  { sub117_cast in_data 0 12 } } }
	cmp120 { ap_none {  { cmp120 in_data 0 1 } } }
	img { ap_fifo {  { img_dout fifo_data_in 0 120 }  { img_num_data_valid fifo_status_num_data_valid 0 3 }  { img_fifo_cap fifo_update 0 3 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_port_we 1 1 } } }
	pix_47_out { ap_vld {  { pix_47_out out_data 1 10 }  { pix_47_out_ap_vld out_vld 1 1 } } }
	pix_46_out { ap_vld {  { pix_46_out out_data 1 10 }  { pix_46_out_ap_vld out_vld 1 1 } } }
	pix_45_out { ap_vld {  { pix_45_out out_data 1 10 }  { pix_45_out_ap_vld out_vld 1 1 } } }
	pix_44_out { ap_vld {  { pix_44_out out_data 1 10 }  { pix_44_out_ap_vld out_vld 1 1 } } }
	pix_43_out { ap_vld {  { pix_43_out out_data 1 10 }  { pix_43_out_ap_vld out_vld 1 1 } } }
	pix_42_out { ap_vld {  { pix_42_out out_data 1 10 }  { pix_42_out_ap_vld out_vld 1 1 } } }
	pix_41_out { ap_vld {  { pix_41_out out_data 1 10 }  { pix_41_out_ap_vld out_vld 1 1 } } }
	pix_40_out { ap_vld {  { pix_40_out out_data 1 10 }  { pix_40_out_ap_vld out_vld 1 1 } } }
}
