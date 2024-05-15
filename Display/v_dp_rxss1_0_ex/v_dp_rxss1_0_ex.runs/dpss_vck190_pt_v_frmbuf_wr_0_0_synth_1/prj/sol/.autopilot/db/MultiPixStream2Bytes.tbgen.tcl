set moduleName MultiPixStream2Bytes
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
set C_modelName {MultiPixStream2Bytes}
set C_modelType { void 0 }
set C_modelArgList {
	{ img int 120 regular {fifo 0 volatile }  }
	{ bytePlanes_plane0 int 256 regular {fifo 1 volatile }  }
	{ bytePlanes_plane1 int 256 regular {fifo 1 volatile }  }
	{ Height_val int 13 regular {ap_stable 0} }
	{ WidthInPix_val int 13 regular {ap_stable 0} }
	{ WidthInBytes_val int 16 regular {fifo 0}  }
	{ VideoFormat_val int 6 regular {ap_stable 0} }
	{ WidthInBytes_val2_c int 16 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 120, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes_plane0", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bytePlanes_plane1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Height_val", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInPix_val", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "VideoFormat_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes_val2_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 120 signal 0 } 
	{ img_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ img_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ img_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_read sc_out sc_logic 1 signal 0 } 
	{ bytePlanes_plane0_din sc_out sc_lv 256 signal 1 } 
	{ bytePlanes_plane0_num_data_valid sc_in sc_lv 10 signal 1 } 
	{ bytePlanes_plane0_fifo_cap sc_in sc_lv 10 signal 1 } 
	{ bytePlanes_plane0_full_n sc_in sc_logic 1 signal 1 } 
	{ bytePlanes_plane0_write sc_out sc_logic 1 signal 1 } 
	{ bytePlanes_plane1_din sc_out sc_lv 256 signal 2 } 
	{ bytePlanes_plane1_num_data_valid sc_in sc_lv 10 signal 2 } 
	{ bytePlanes_plane1_fifo_cap sc_in sc_lv 10 signal 2 } 
	{ bytePlanes_plane1_full_n sc_in sc_logic 1 signal 2 } 
	{ bytePlanes_plane1_write sc_out sc_logic 1 signal 2 } 
	{ Height_val sc_in sc_lv 13 signal 3 } 
	{ WidthInPix_val sc_in sc_lv 13 signal 4 } 
	{ WidthInBytes_val_dout sc_in sc_lv 16 signal 5 } 
	{ WidthInBytes_val_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ WidthInBytes_val_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ WidthInBytes_val_empty_n sc_in sc_logic 1 signal 5 } 
	{ WidthInBytes_val_read sc_out sc_logic 1 signal 5 } 
	{ VideoFormat_val sc_in sc_lv 6 signal 6 } 
	{ WidthInBytes_val2_c_din sc_out sc_lv 16 signal 7 } 
	{ WidthInBytes_val2_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ WidthInBytes_val2_c_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ WidthInBytes_val2_c_full_n sc_in sc_logic 1 signal 7 } 
	{ WidthInBytes_val2_c_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":120, "type": "signal", "bundle":{"name": "img", "role": "dout" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "empty_n" }} , 
 	{ "name": "img_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "read" }} , 
 	{ "name": "bytePlanes_plane0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "din" }} , 
 	{ "name": "bytePlanes_plane0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "write" }} , 
 	{ "name": "bytePlanes_plane1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "din" }} , 
 	{ "name": "bytePlanes_plane1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "write" }} , 
 	{ "name": "Height_val", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "Height_val", "role": "default" }} , 
 	{ "name": "WidthInPix_val", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "WidthInPix_val", "role": "default" }} , 
 	{ "name": "WidthInBytes_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthInBytes_val", "role": "dout" }} , 
 	{ "name": "WidthInBytes_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_val", "role": "num_data_valid" }} , 
 	{ "name": "WidthInBytes_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_val", "role": "fifo_cap" }} , 
 	{ "name": "WidthInBytes_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_val", "role": "empty_n" }} , 
 	{ "name": "WidthInBytes_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_val", "role": "read" }} , 
 	{ "name": "VideoFormat_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "VideoFormat_val", "role": "default" }} , 
 	{ "name": "WidthInBytes_val2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c", "role": "din" }} , 
 	{ "name": "WidthInBytes_val2_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c", "role": "num_data_valid" }} , 
 	{ "name": "WidthInBytes_val2_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c", "role": "fifo_cap" }} , 
 	{ "name": "WidthInBytes_val2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c", "role": "full_n" }} , 
 	{ "name": "WidthInBytes_val2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_val2_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "10"],
		"CDFG" : "MultiPixStream2Bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "53110097",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_632_1_fu_549", "Port" : "img", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "3", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9_fu_481", "Port" : "img", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "1", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_13_fu_436", "Port" : "img", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_5_fu_519", "Port" : "img", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "bytePlanes_plane0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "480", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_632_1_fu_549", "Port" : "bytePlanes_plane0", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "3", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9_fu_481", "Port" : "bytePlanes_plane0", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "1", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_13_fu_436", "Port" : "bytePlanes_plane0", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_5_fu_519", "Port" : "bytePlanes_plane0", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "bytePlanes_plane1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "480", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9_fu_481", "Port" : "bytePlanes_plane1", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "Height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "WidthInPix_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "WidthInBytes_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "VideoFormat_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "WidthInBytes_val2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_val2_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_RGBX10_YUVX10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state31", "LastState" : ["ap_ST_fsm_state33"], "QuitState" : ["ap_ST_fsm_state31"], "PreState" : ["ap_ST_fsm_state27"], "PostState" : ["ap_ST_fsm_state24"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_YUYV8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state28", "LastState" : ["ap_ST_fsm_state30"], "QuitState" : ["ap_ST_fsm_state28"], "PreState" : ["ap_ST_fsm_state27"], "PostState" : ["ap_ST_fsm_state24"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_Y_UV10_Y_UV10_420", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state24", "LastState" : ["ap_ST_fsm_state26"], "QuitState" : ["ap_ST_fsm_state24"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state23", "ap_ST_fsm_state28", "ap_ST_fsm_state31", "ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_RGB8_YUV8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state24"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_13_fu_436", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5467",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pix_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp444_2", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp19", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bytePlanes_plane0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp_ln930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp392_6", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp392_5", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp392_4", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp16", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp392_2", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp13", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "sub389", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_68_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_943_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_13_fu_436.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9_fu_481", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "12291",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pix_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln789_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes_plane1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bytePlanes_plane0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "VideoFormat_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "empty_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp223_5", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp223_4", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "empty", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp223_2", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "icmp9", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "sub220_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_pix_UV_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "out_pix_Y_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_806_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9_fu_481.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_5_fu_519", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_5_fu_519.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_632_1_fu_549", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_632_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "6146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pix_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln616_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes_plane0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_ln620", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub40_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_pix_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_632_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_632_1_fu_549.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_13ns_6ns_13_17_seq_1_U190", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_12ns_14ns_25_1_1_U191", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes {
		img {Type I LastRead 8 FirstWrite -1}
		bytePlanes_plane0 {Type O LastRead -1 FirstWrite 3}
		bytePlanes_plane1 {Type O LastRead -1 FirstWrite 6}
		Height_val {Type I LastRead 0 FirstWrite -1}
		WidthInPix_val {Type I LastRead 0 FirstWrite -1}
		WidthInBytes_val {Type I LastRead 0 FirstWrite -1}
		VideoFormat_val {Type I LastRead 0 FirstWrite -1}
		WidthInBytes_val2_c {Type O LastRead -1 FirstWrite 0}}
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_13 {
		pix_67 {Type I LastRead 0 FirstWrite -1}
		pix_66 {Type I LastRead 0 FirstWrite -1}
		pix_65 {Type I LastRead 0 FirstWrite -1}
		pix_64 {Type I LastRead 0 FirstWrite -1}
		pix_63 {Type I LastRead 0 FirstWrite -1}
		pix_62 {Type I LastRead 0 FirstWrite -1}
		pix_61 {Type I LastRead 0 FirstWrite -1}
		pix_60 {Type I LastRead 0 FirstWrite -1}
		pix_59 {Type I LastRead 0 FirstWrite -1}
		pix_58 {Type I LastRead 0 FirstWrite -1}
		pix_57 {Type I LastRead 0 FirstWrite -1}
		pix_56 {Type I LastRead 0 FirstWrite -1}
		trunc_ln4 {Type I LastRead 0 FirstWrite -1}
		cmp444_2 {Type I LastRead 0 FirstWrite -1}
		icmp19 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane0 {Type O LastRead -1 FirstWrite 4}
		cmp444 {Type I LastRead 0 FirstWrite -1}
		icmp_ln930 {Type I LastRead 0 FirstWrite -1}
		cmp392_6 {Type I LastRead 0 FirstWrite -1}
		cmp392_5 {Type I LastRead 0 FirstWrite -1}
		cmp392_4 {Type I LastRead 0 FirstWrite -1}
		icmp16 {Type I LastRead 0 FirstWrite -1}
		cmp392_2 {Type I LastRead 0 FirstWrite -1}
		icmp13 {Type I LastRead 0 FirstWrite -1}
		sub389 {Type I LastRead 0 FirstWrite -1}
		cmp392 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 8 FirstWrite -1}
		pix_79_out {Type O LastRead -1 FirstWrite 1}
		pix_78_out {Type O LastRead -1 FirstWrite 1}
		pix_77_out {Type O LastRead -1 FirstWrite 1}
		pix_76_out {Type O LastRead -1 FirstWrite 1}
		pix_75_out {Type O LastRead -1 FirstWrite 1}
		pix_74_out {Type O LastRead -1 FirstWrite 1}
		pix_73_out {Type O LastRead -1 FirstWrite 1}
		pix_72_out {Type O LastRead -1 FirstWrite 1}
		pix_71_out {Type O LastRead -1 FirstWrite 1}
		pix_70_out {Type O LastRead -1 FirstWrite 1}
		pix_69_out {Type O LastRead -1 FirstWrite 1}
		pix_68_out {Type O LastRead -1 FirstWrite 1}}
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9 {
		pix_27 {Type I LastRead 0 FirstWrite -1}
		pix_26 {Type I LastRead 0 FirstWrite -1}
		pix_25 {Type I LastRead 0 FirstWrite -1}
		pix_24 {Type I LastRead 0 FirstWrite -1}
		pix_23 {Type I LastRead 0 FirstWrite -1}
		pix_22 {Type I LastRead 0 FirstWrite -1}
		pix_21 {Type I LastRead 0 FirstWrite -1}
		pix_20 {Type I LastRead 0 FirstWrite -1}
		trunc_ln789_1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane1 {Type O LastRead -1 FirstWrite 6}
		bytePlanes_plane0 {Type O LastRead -1 FirstWrite 6}
		VideoFormat_val {Type I LastRead 0 FirstWrite -1}
		empty_66 {Type I LastRead 0 FirstWrite -1}
		cmp223_5 {Type I LastRead 0 FirstWrite -1}
		cmp223_4 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		cmp223_2 {Type I LastRead 0 FirstWrite -1}
		icmp9 {Type I LastRead 0 FirstWrite -1}
		sub220_cast {Type I LastRead 0 FirstWrite -1}
		cmp223 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 6 FirstWrite -1}
		pix_55_out {Type O LastRead -1 FirstWrite 1}
		pix_54_out {Type O LastRead -1 FirstWrite 1}
		pix_53_out {Type O LastRead -1 FirstWrite 1}
		pix_52_out {Type O LastRead -1 FirstWrite 1}
		pix_51_out {Type O LastRead -1 FirstWrite 1}
		pix_50_out {Type O LastRead -1 FirstWrite 1}
		pix_49_out {Type O LastRead -1 FirstWrite 1}
		pix_48_out {Type O LastRead -1 FirstWrite 1}
		out_pix_UV_1_out {Type IO LastRead 6 FirstWrite 6}
		out_pix_Y_1_out {Type IO LastRead 6 FirstWrite 6}}
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
		pix_40_out {Type O LastRead -1 FirstWrite 1}}
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_632_1 {
		pix_11 {Type I LastRead 0 FirstWrite -1}
		pix_10 {Type I LastRead 0 FirstWrite -1}
		pix_9 {Type I LastRead 0 FirstWrite -1}
		pix_8 {Type I LastRead 0 FirstWrite -1}
		pix_7 {Type I LastRead 0 FirstWrite -1}
		pix_6 {Type I LastRead 0 FirstWrite -1}
		pix_5 {Type I LastRead 0 FirstWrite -1}
		pix_4 {Type I LastRead 0 FirstWrite -1}
		pix_3 {Type I LastRead 0 FirstWrite -1}
		pix_2 {Type I LastRead 0 FirstWrite -1}
		pix_1 {Type I LastRead 0 FirstWrite -1}
		pix {Type I LastRead 0 FirstWrite -1}
		trunc_ln616_2 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane0 {Type O LastRead -1 FirstWrite 3}
		icmp_ln620 {Type I LastRead 0 FirstWrite -1}
		sub40_cast {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 3 FirstWrite -1}
		pix_39_out {Type O LastRead -1 FirstWrite 1}
		pix_38_out {Type O LastRead -1 FirstWrite 1}
		pix_37_out {Type O LastRead -1 FirstWrite 1}
		pix_36_out {Type O LastRead -1 FirstWrite 1}
		pix_35_out {Type O LastRead -1 FirstWrite 1}
		pix_34_out {Type O LastRead -1 FirstWrite 1}
		pix_33_out {Type O LastRead -1 FirstWrite 1}
		pix_32_out {Type O LastRead -1 FirstWrite 1}
		pix_31_out {Type O LastRead -1 FirstWrite 1}
		pix_30_out {Type O LastRead -1 FirstWrite 1}
		pix_29_out {Type O LastRead -1 FirstWrite 1}
		pix_28_out {Type O LastRead -1 FirstWrite 1}
		out_pix_1_out {Type IO LastRead 3 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "53110097"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "53110097"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img { ap_fifo {  { img_dout fifo_data_in 0 120 }  { img_num_data_valid fifo_status_num_data_valid 0 3 }  { img_fifo_cap fifo_update 0 3 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_port_we 1 1 } } }
	bytePlanes_plane0 { ap_fifo {  { bytePlanes_plane0_din fifo_data_in 1 256 }  { bytePlanes_plane0_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_plane0_fifo_cap fifo_update 0 10 }  { bytePlanes_plane0_full_n fifo_status 0 1 }  { bytePlanes_plane0_write fifo_port_we 1 1 } } }
	bytePlanes_plane1 { ap_fifo {  { bytePlanes_plane1_din fifo_data_in 1 256 }  { bytePlanes_plane1_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_plane1_fifo_cap fifo_update 0 10 }  { bytePlanes_plane1_full_n fifo_status 0 1 }  { bytePlanes_plane1_write fifo_port_we 1 1 } } }
	Height_val { ap_stable {  { Height_val in_data 0 13 } } }
	WidthInPix_val { ap_stable {  { WidthInPix_val in_data 0 13 } } }
	WidthInBytes_val { ap_fifo {  { WidthInBytes_val_dout fifo_data_in 0 16 }  { WidthInBytes_val_num_data_valid fifo_status_num_data_valid 0 3 }  { WidthInBytes_val_fifo_cap fifo_update 0 3 }  { WidthInBytes_val_empty_n fifo_status 0 1 }  { WidthInBytes_val_read fifo_port_we 1 1 } } }
	VideoFormat_val { ap_stable {  { VideoFormat_val in_data 0 6 } } }
	WidthInBytes_val2_c { ap_fifo {  { WidthInBytes_val2_c_din fifo_data_in 1 16 }  { WidthInBytes_val2_c_num_data_valid fifo_status_num_data_valid 0 3 }  { WidthInBytes_val2_c_fifo_cap fifo_update 0 3 }  { WidthInBytes_val2_c_full_n fifo_status 0 1 }  { WidthInBytes_val2_c_write fifo_port_we 1 1 } } }
}
