set moduleName Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9
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
set C_modelName {Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln2 int 11 regular  }
	{ icmp_ln1144 int 1 regular {ap_stable 0} }
	{ cmp392_6 int 1 regular {ap_stable 0} }
	{ cmp392_5 int 1 regular {ap_stable 0} }
	{ cmp392_4 int 1 regular {ap_stable 0} }
	{ icmp25 int 1 regular {ap_stable 0} }
	{ cmp392_2 int 1 regular {ap_stable 0} }
	{ icmp22 int 1 regular {ap_stable 0} }
	{ cmp392 int 1 regular {ap_stable 0} }
	{ cmp292 int 1 regular  }
	{ bytePlanes_plane0 int 256 regular {fifo 0 volatile }  }
	{ sub280 int 11 regular  }
	{ cmp283 int 1 regular  }
	{ img int 120 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln2", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1144", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp392_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp392_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp392_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp25", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp392_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp22", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp392", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp292", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes_plane0", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "sub280", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "cmp283", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 120, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_din sc_out sc_lv 120 signal 13 } 
	{ img_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ img_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ img_full_n sc_in sc_logic 1 signal 13 } 
	{ img_write sc_out sc_logic 1 signal 13 } 
	{ trunc_ln2 sc_in sc_lv 11 signal 0 } 
	{ icmp_ln1144 sc_in sc_lv 1 signal 1 } 
	{ cmp392_6 sc_in sc_lv 1 signal 2 } 
	{ cmp392_5 sc_in sc_lv 1 signal 3 } 
	{ cmp392_4 sc_in sc_lv 1 signal 4 } 
	{ icmp25 sc_in sc_lv 1 signal 5 } 
	{ cmp392_2 sc_in sc_lv 1 signal 6 } 
	{ icmp22 sc_in sc_lv 1 signal 7 } 
	{ cmp392 sc_in sc_lv 1 signal 8 } 
	{ cmp292 sc_in sc_lv 1 signal 9 } 
	{ bytePlanes_plane0_dout sc_in sc_lv 256 signal 10 } 
	{ bytePlanes_plane0_num_data_valid sc_in sc_lv 10 signal 10 } 
	{ bytePlanes_plane0_fifo_cap sc_in sc_lv 10 signal 10 } 
	{ bytePlanes_plane0_empty_n sc_in sc_logic 1 signal 10 } 
	{ bytePlanes_plane0_read sc_out sc_logic 1 signal 10 } 
	{ sub280 sc_in sc_lv 11 signal 11 } 
	{ cmp283 sc_in sc_lv 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_din", "direction": "out", "datatype": "sc_lv", "bitwidth":120, "type": "signal", "bundle":{"name": "img", "role": "din" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "full_n" }} , 
 	{ "name": "img_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "write" }} , 
 	{ "name": "trunc_ln2", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "trunc_ln2", "role": "default" }} , 
 	{ "name": "icmp_ln1144", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1144", "role": "default" }} , 
 	{ "name": "cmp392_6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp392_6", "role": "default" }} , 
 	{ "name": "cmp392_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp392_5", "role": "default" }} , 
 	{ "name": "cmp392_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp392_4", "role": "default" }} , 
 	{ "name": "icmp25", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp25", "role": "default" }} , 
 	{ "name": "cmp392_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp392_2", "role": "default" }} , 
 	{ "name": "icmp22", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp22", "role": "default" }} , 
 	{ "name": "cmp392", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp392", "role": "default" }} , 
 	{ "name": "cmp292", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp292", "role": "default" }} , 
 	{ "name": "bytePlanes_plane0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "dout" }} , 
 	{ "name": "bytePlanes_plane0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "empty_n" }} , 
 	{ "name": "bytePlanes_plane0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "read" }} , 
 	{ "name": "sub280", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sub280", "role": "default" }} , 
 	{ "name": "cmp283", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp283", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5466",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp392_6", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp392_5", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp392_4", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp25", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp392_2", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp22", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp292", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes_plane0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub280", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp283", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1155_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9 {
		trunc_ln2 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1144 {Type I LastRead 0 FirstWrite -1}
		cmp392_6 {Type I LastRead 0 FirstWrite -1}
		cmp392_5 {Type I LastRead 0 FirstWrite -1}
		cmp392_4 {Type I LastRead 0 FirstWrite -1}
		icmp25 {Type I LastRead 0 FirstWrite -1}
		cmp392_2 {Type I LastRead 0 FirstWrite -1}
		icmp22 {Type I LastRead 0 FirstWrite -1}
		cmp392 {Type I LastRead 0 FirstWrite -1}
		cmp292 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane0 {Type I LastRead 3 FirstWrite -1}
		sub280 {Type I LastRead 0 FirstWrite -1}
		cmp283 {Type I LastRead 0 FirstWrite -1}
		img {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "5466"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "5466"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln2 { ap_none {  { trunc_ln2 in_data 0 11 } } }
	icmp_ln1144 { ap_stable {  { icmp_ln1144 in_data 0 1 } } }
	cmp392_6 { ap_stable {  { cmp392_6 in_data 0 1 } } }
	cmp392_5 { ap_stable {  { cmp392_5 in_data 0 1 } } }
	cmp392_4 { ap_stable {  { cmp392_4 in_data 0 1 } } }
	icmp25 { ap_stable {  { icmp25 in_data 0 1 } } }
	cmp392_2 { ap_stable {  { cmp392_2 in_data 0 1 } } }
	icmp22 { ap_stable {  { icmp22 in_data 0 1 } } }
	cmp392 { ap_stable {  { cmp392 in_data 0 1 } } }
	cmp292 { ap_none {  { cmp292 in_data 0 1 } } }
	bytePlanes_plane0 { ap_fifo {  { bytePlanes_plane0_dout fifo_data_in 0 256 }  { bytePlanes_plane0_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_plane0_fifo_cap fifo_update 0 10 }  { bytePlanes_plane0_empty_n fifo_status 0 1 }  { bytePlanes_plane0_read fifo_port_we 1 1 } } }
	sub280 { ap_none {  { sub280 in_data 0 11 } } }
	cmp283 { ap_none {  { cmp283 in_data 0 1 } } }
	img { ap_fifo {  { img_din fifo_data_in 1 120 }  { img_num_data_valid fifo_status_num_data_valid 0 3 }  { img_fifo_cap fifo_update 0 3 }  { img_full_n fifo_status 0 1 }  { img_write fifo_port_we 1 1 } } }
}
