set moduleName Bytes2MultiPixStream
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {Bytes2MultiPixStream}
set C_modelType { void 0 }
set C_modelArgList {
	{ bytePlanes_plane0 int 256 regular {fifo 0 volatile }  }
	{ bytePlanes_plane1 int 256 regular {fifo 0 volatile }  }
	{ img int 120 regular {fifo 1 volatile }  }
	{ Height_val int 13 regular {ap_stable 0} }
	{ Width_val int 13 regular {ap_stable 0} }
	{ WidthInBytes_val int 16 regular {fifo 0}  }
	{ VideoFormat_val int 6 regular {ap_stable 0} }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "bytePlanes_plane0", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes_plane1", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 120, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Height_val", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "Width_val", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "VideoFormat_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bytePlanes_plane0_dout sc_in sc_lv 256 signal 0 } 
	{ bytePlanes_plane0_num_data_valid sc_in sc_lv 10 signal 0 } 
	{ bytePlanes_plane0_fifo_cap sc_in sc_lv 10 signal 0 } 
	{ bytePlanes_plane0_empty_n sc_in sc_logic 1 signal 0 } 
	{ bytePlanes_plane0_read sc_out sc_logic 1 signal 0 } 
	{ bytePlanes_plane1_dout sc_in sc_lv 256 signal 1 } 
	{ bytePlanes_plane1_num_data_valid sc_in sc_lv 10 signal 1 } 
	{ bytePlanes_plane1_fifo_cap sc_in sc_lv 10 signal 1 } 
	{ bytePlanes_plane1_empty_n sc_in sc_logic 1 signal 1 } 
	{ bytePlanes_plane1_read sc_out sc_logic 1 signal 1 } 
	{ img_din sc_out sc_lv 120 signal 2 } 
	{ img_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ img_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ img_full_n sc_in sc_logic 1 signal 2 } 
	{ img_write sc_out sc_logic 1 signal 2 } 
	{ Height_val sc_in sc_lv 13 signal 3 } 
	{ Width_val sc_in sc_lv 13 signal 4 } 
	{ WidthInBytes_val_dout sc_in sc_lv 16 signal 5 } 
	{ WidthInBytes_val_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ WidthInBytes_val_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ WidthInBytes_val_empty_n sc_in sc_logic 1 signal 5 } 
	{ WidthInBytes_val_read sc_out sc_logic 1 signal 5 } 
	{ VideoFormat_val sc_in sc_lv 6 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bytePlanes_plane0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "dout" }} , 
 	{ "name": "bytePlanes_plane0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "empty_n" }} , 
 	{ "name": "bytePlanes_plane0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "read" }} , 
 	{ "name": "bytePlanes_plane1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "dout" }} , 
 	{ "name": "bytePlanes_plane1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "empty_n" }} , 
 	{ "name": "bytePlanes_plane1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "read" }} , 
 	{ "name": "img_din", "direction": "out", "datatype": "sc_lv", "bitwidth":120, "type": "signal", "bundle":{"name": "img", "role": "din" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "full_n" }} , 
 	{ "name": "img_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "write" }} , 
 	{ "name": "Height_val", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "Height_val", "role": "default" }} , 
 	{ "name": "Width_val", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "Width_val", "role": "default" }} , 
 	{ "name": "WidthInBytes_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthInBytes_val", "role": "dout" }} , 
 	{ "name": "WidthInBytes_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_val", "role": "num_data_valid" }} , 
 	{ "name": "WidthInBytes_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_val", "role": "fifo_cap" }} , 
 	{ "name": "WidthInBytes_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_val", "role": "empty_n" }} , 
 	{ "name": "WidthInBytes_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_val", "role": "read" }} , 
 	{ "name": "VideoFormat_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "VideoFormat_val", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "10", "11"],
		"CDFG" : "Bytes2MultiPixStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "53101457",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bytePlanes_plane0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "480", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12_fu_248", "Port" : "bytePlanes_plane0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6_fu_280", "Port" : "bytePlanes_plane0", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "3", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9_fu_260", "Port" : "bytePlanes_plane0", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "7", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1_fu_294", "Port" : "bytePlanes_plane0", "Inst_start_state" : "39", "Inst_end_state" : "40"}]},
			{"Name" : "bytePlanes_plane1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "480", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1_fu_294", "Port" : "bytePlanes_plane1", "Inst_start_state" : "39", "Inst_end_state" : "40"}]},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12_fu_248", "Port" : "img", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6_fu_280", "Port" : "img", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "3", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9_fu_260", "Port" : "img", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "7", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1_fu_294", "Port" : "img", "Inst_start_state" : "39", "Inst_end_state" : "40"}]},
			{"Name" : "Height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "Width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "WidthInBytes_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "VideoFormat_val", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_Y_UV10_Y_UV10_420", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "40", "FirstState" : "ap_ST_fsm_state39", "LastState" : ["ap_ST_fsm_state40"], "QuitState" : ["ap_ST_fsm_state39"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state38", "ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_YUYV8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "40", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_RGB8_YUV8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "40", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state18", "ap_ST_fsm_state21", "ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state39"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_RGBX10_YUVX10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "40", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12_fu_248", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln1393_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1396", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes_plane0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub525_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1406_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12_fu_248.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9_fu_260", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6_fu_280", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln1059_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1062", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp224_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp19", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes_plane0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub220_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp224", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1072_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1_fu_294", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "12290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln901_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp117_5", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp117_4", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "empty_73", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp117_2", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "sub113_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bytePlanes_plane0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "VideoFormat_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes_plane1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_914_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1_fu_294.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_12ns_3ns_2_16_seq_1_U62", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_13ns_6ns_13_17_seq_1_U63", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_12ns_14ns_25_1_1_U64", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Bytes2MultiPixStream {
		bytePlanes_plane0 {Type I LastRead 3 FirstWrite -1}
		bytePlanes_plane1 {Type I LastRead 1 FirstWrite -1}
		img {Type O LastRead -1 FirstWrite 1}
		Height_val {Type I LastRead 0 FirstWrite -1}
		Width_val {Type I LastRead 0 FirstWrite -1}
		WidthInBytes_val {Type I LastRead 0 FirstWrite -1}
		VideoFormat_val {Type I LastRead 0 FirstWrite -1}}
	Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12 {
		trunc_ln1393_2 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1396 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane0 {Type I LastRead 1 FirstWrite -1}
		sub525_cast {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		img {Type O LastRead -1 FirstWrite 1}}
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
		img {Type O LastRead -1 FirstWrite 1}}
	Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6 {
		trunc_ln1059_2 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1062 {Type I LastRead 0 FirstWrite -1}
		cmp224_2 {Type I LastRead 0 FirstWrite -1}
		icmp19 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane0 {Type I LastRead 1 FirstWrite -1}
		sub220_cast {Type I LastRead 0 FirstWrite -1}
		cmp224 {Type I LastRead 0 FirstWrite -1}
		img {Type O LastRead -1 FirstWrite 1}}
	Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1 {
		trunc_ln901_1 {Type I LastRead 0 FirstWrite -1}
		cmp117_5 {Type I LastRead 0 FirstWrite -1}
		cmp117_4 {Type I LastRead 0 FirstWrite -1}
		empty_73 {Type I LastRead 0 FirstWrite -1}
		cmp117_2 {Type I LastRead 0 FirstWrite -1}
		icmp {Type I LastRead 0 FirstWrite -1}
		sub113_cast {Type I LastRead 0 FirstWrite -1}
		cmp117 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane0 {Type I LastRead 1 FirstWrite -1}
		VideoFormat_val {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane1 {Type I LastRead 1 FirstWrite -1}
		img {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "53101457"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "53101457"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bytePlanes_plane0 { ap_fifo {  { bytePlanes_plane0_dout fifo_data_in 0 256 }  { bytePlanes_plane0_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_plane0_fifo_cap fifo_update 0 10 }  { bytePlanes_plane0_empty_n fifo_status 0 1 }  { bytePlanes_plane0_read fifo_port_we 1 1 } } }
	bytePlanes_plane1 { ap_fifo {  { bytePlanes_plane1_dout fifo_data_in 0 256 }  { bytePlanes_plane1_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_plane1_fifo_cap fifo_update 0 10 }  { bytePlanes_plane1_empty_n fifo_status 0 1 }  { bytePlanes_plane1_read fifo_port_we 1 1 } } }
	img { ap_fifo {  { img_din fifo_data_in 1 120 }  { img_num_data_valid fifo_status_num_data_valid 0 3 }  { img_fifo_cap fifo_update 0 3 }  { img_full_n fifo_status 0 1 }  { img_write fifo_port_we 1 1 } } }
	Height_val { ap_stable {  { Height_val in_data 0 13 } } }
	Width_val { ap_stable {  { Width_val in_data 0 13 } } }
	WidthInBytes_val { ap_fifo {  { WidthInBytes_val_dout fifo_data_in 0 16 }  { WidthInBytes_val_num_data_valid fifo_status_num_data_valid 0 3 }  { WidthInBytes_val_fifo_cap fifo_update 0 3 }  { WidthInBytes_val_empty_n fifo_status 0 1 }  { WidthInBytes_val_read fifo_port_we 1 1 } } }
	VideoFormat_val { ap_stable {  { VideoFormat_val in_data 0 6 } } }
}
