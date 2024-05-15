set moduleName MultiPixStream2Bytes_Pipeline_VITIS_LOOP_632_1
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
set C_modelName {MultiPixStream2Bytes_Pipeline_VITIS_LOOP_632_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ pix_11 int 10 regular  }
	{ pix_10 int 10 regular  }
	{ pix_9 int 10 regular  }
	{ pix_8 int 10 regular  }
	{ pix_7 int 10 regular  }
	{ pix_6 int 10 regular  }
	{ pix_5 int 10 regular  }
	{ pix_4 int 10 regular  }
	{ pix_3 int 10 regular  }
	{ pix_2 int 10 regular  }
	{ pix_1 int 10 regular  }
	{ pix int 10 regular  }
	{ trunc_ln616_2 int 12 regular  }
	{ bytePlanes_plane0 int 256 regular {fifo 1 volatile }  }
	{ icmp_ln620 int 1 regular  }
	{ sub40_cast int 12 regular  }
	{ empty int 1 regular  }
	{ img int 120 regular {fifo 0 volatile }  }
	{ pix_39_out int 10 regular {pointer 1}  }
	{ pix_38_out int 10 regular {pointer 1}  }
	{ pix_37_out int 10 regular {pointer 1}  }
	{ pix_36_out int 10 regular {pointer 1}  }
	{ pix_35_out int 10 regular {pointer 1}  }
	{ pix_34_out int 10 regular {pointer 1}  }
	{ pix_33_out int 10 regular {pointer 1}  }
	{ pix_32_out int 10 regular {pointer 1}  }
	{ pix_31_out int 10 regular {pointer 1}  }
	{ pix_30_out int 10 regular {pointer 1}  }
	{ pix_29_out int 10 regular {pointer 1}  }
	{ pix_28_out int 10 regular {pointer 1}  }
	{ out_pix_1_out int 256 regular {pointer 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "pix_11", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_10", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_9", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_8", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_7", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_6", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_5", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_4", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln616_2", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes_plane0", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "icmp_ln620", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub40_cast", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 120, "direction" : "READONLY"} , 
 	{ "Name" : "pix_39_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_38_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_37_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_36_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_35_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_34_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_33_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_32_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_31_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_30_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_29_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_28_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_pix_1_out", "interface" : "wire", "bitwidth" : 256, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 120 signal 17 } 
	{ img_num_data_valid sc_in sc_lv 3 signal 17 } 
	{ img_fifo_cap sc_in sc_lv 3 signal 17 } 
	{ img_empty_n sc_in sc_logic 1 signal 17 } 
	{ img_read sc_out sc_logic 1 signal 17 } 
	{ pix_11 sc_in sc_lv 10 signal 0 } 
	{ pix_10 sc_in sc_lv 10 signal 1 } 
	{ pix_9 sc_in sc_lv 10 signal 2 } 
	{ pix_8 sc_in sc_lv 10 signal 3 } 
	{ pix_7 sc_in sc_lv 10 signal 4 } 
	{ pix_6 sc_in sc_lv 10 signal 5 } 
	{ pix_5 sc_in sc_lv 10 signal 6 } 
	{ pix_4 sc_in sc_lv 10 signal 7 } 
	{ pix_3 sc_in sc_lv 10 signal 8 } 
	{ pix_2 sc_in sc_lv 10 signal 9 } 
	{ pix_1 sc_in sc_lv 10 signal 10 } 
	{ pix sc_in sc_lv 10 signal 11 } 
	{ trunc_ln616_2 sc_in sc_lv 12 signal 12 } 
	{ bytePlanes_plane0_din sc_out sc_lv 256 signal 13 } 
	{ bytePlanes_plane0_num_data_valid sc_in sc_lv 10 signal 13 } 
	{ bytePlanes_plane0_fifo_cap sc_in sc_lv 10 signal 13 } 
	{ bytePlanes_plane0_full_n sc_in sc_logic 1 signal 13 } 
	{ bytePlanes_plane0_write sc_out sc_logic 1 signal 13 } 
	{ icmp_ln620 sc_in sc_lv 1 signal 14 } 
	{ sub40_cast sc_in sc_lv 12 signal 15 } 
	{ empty sc_in sc_lv 1 signal 16 } 
	{ pix_39_out sc_out sc_lv 10 signal 18 } 
	{ pix_39_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ pix_38_out sc_out sc_lv 10 signal 19 } 
	{ pix_38_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ pix_37_out sc_out sc_lv 10 signal 20 } 
	{ pix_37_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ pix_36_out sc_out sc_lv 10 signal 21 } 
	{ pix_36_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ pix_35_out sc_out sc_lv 10 signal 22 } 
	{ pix_35_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ pix_34_out sc_out sc_lv 10 signal 23 } 
	{ pix_34_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ pix_33_out sc_out sc_lv 10 signal 24 } 
	{ pix_33_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ pix_32_out sc_out sc_lv 10 signal 25 } 
	{ pix_32_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ pix_31_out sc_out sc_lv 10 signal 26 } 
	{ pix_31_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ pix_30_out sc_out sc_lv 10 signal 27 } 
	{ pix_30_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ pix_29_out sc_out sc_lv 10 signal 28 } 
	{ pix_29_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ pix_28_out sc_out sc_lv 10 signal 29 } 
	{ pix_28_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ out_pix_1_out_i sc_in sc_lv 256 signal 30 } 
	{ out_pix_1_out_o sc_out sc_lv 256 signal 30 } 
	{ out_pix_1_out_o_ap_vld sc_out sc_logic 1 outvld 30 } 
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
 	{ "name": "pix_11", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_11", "role": "default" }} , 
 	{ "name": "pix_10", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_10", "role": "default" }} , 
 	{ "name": "pix_9", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_9", "role": "default" }} , 
 	{ "name": "pix_8", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_8", "role": "default" }} , 
 	{ "name": "pix_7", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_7", "role": "default" }} , 
 	{ "name": "pix_6", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_6", "role": "default" }} , 
 	{ "name": "pix_5", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_5", "role": "default" }} , 
 	{ "name": "pix_4", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_4", "role": "default" }} , 
 	{ "name": "pix_3", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_3", "role": "default" }} , 
 	{ "name": "pix_2", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_2", "role": "default" }} , 
 	{ "name": "pix_1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_1", "role": "default" }} , 
 	{ "name": "pix", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix", "role": "default" }} , 
 	{ "name": "trunc_ln616_2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "trunc_ln616_2", "role": "default" }} , 
 	{ "name": "bytePlanes_plane0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "din" }} , 
 	{ "name": "bytePlanes_plane0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "write" }} , 
 	{ "name": "icmp_ln620", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln620", "role": "default" }} , 
 	{ "name": "sub40_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sub40_cast", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "pix_39_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_39_out", "role": "default" }} , 
 	{ "name": "pix_39_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_39_out", "role": "ap_vld" }} , 
 	{ "name": "pix_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_38_out", "role": "default" }} , 
 	{ "name": "pix_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_38_out", "role": "ap_vld" }} , 
 	{ "name": "pix_37_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_37_out", "role": "default" }} , 
 	{ "name": "pix_37_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_37_out", "role": "ap_vld" }} , 
 	{ "name": "pix_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_36_out", "role": "default" }} , 
 	{ "name": "pix_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_36_out", "role": "ap_vld" }} , 
 	{ "name": "pix_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_35_out", "role": "default" }} , 
 	{ "name": "pix_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_35_out", "role": "ap_vld" }} , 
 	{ "name": "pix_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_34_out", "role": "default" }} , 
 	{ "name": "pix_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_34_out", "role": "ap_vld" }} , 
 	{ "name": "pix_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_33_out", "role": "default" }} , 
 	{ "name": "pix_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_33_out", "role": "ap_vld" }} , 
 	{ "name": "pix_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_32_out", "role": "default" }} , 
 	{ "name": "pix_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_32_out", "role": "ap_vld" }} , 
 	{ "name": "pix_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_31_out", "role": "default" }} , 
 	{ "name": "pix_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_31_out", "role": "ap_vld" }} , 
 	{ "name": "pix_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_30_out", "role": "default" }} , 
 	{ "name": "pix_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_30_out", "role": "ap_vld" }} , 
 	{ "name": "pix_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_29_out", "role": "default" }} , 
 	{ "name": "pix_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_29_out", "role": "ap_vld" }} , 
 	{ "name": "pix_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_28_out", "role": "default" }} , 
 	{ "name": "pix_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_28_out", "role": "ap_vld" }} , 
 	{ "name": "out_pix_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_pix_1_out", "role": "i" }} , 
 	{ "name": "out_pix_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_pix_1_out", "role": "o" }} , 
 	{ "name": "out_pix_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_pix_1_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "2", "Max" : "6146"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "6146"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pix_11 { ap_none {  { pix_11 in_data 0 10 } } }
	pix_10 { ap_none {  { pix_10 in_data 0 10 } } }
	pix_9 { ap_none {  { pix_9 in_data 0 10 } } }
	pix_8 { ap_none {  { pix_8 in_data 0 10 } } }
	pix_7 { ap_none {  { pix_7 in_data 0 10 } } }
	pix_6 { ap_none {  { pix_6 in_data 0 10 } } }
	pix_5 { ap_none {  { pix_5 in_data 0 10 } } }
	pix_4 { ap_none {  { pix_4 in_data 0 10 } } }
	pix_3 { ap_none {  { pix_3 in_data 0 10 } } }
	pix_2 { ap_none {  { pix_2 in_data 0 10 } } }
	pix_1 { ap_none {  { pix_1 in_data 0 10 } } }
	pix { ap_none {  { pix in_data 0 10 } } }
	trunc_ln616_2 { ap_none {  { trunc_ln616_2 in_data 0 12 } } }
	bytePlanes_plane0 { ap_fifo {  { bytePlanes_plane0_din fifo_data_in 1 256 }  { bytePlanes_plane0_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_plane0_fifo_cap fifo_update 0 10 }  { bytePlanes_plane0_full_n fifo_status 0 1 }  { bytePlanes_plane0_write fifo_port_we 1 1 } } }
	icmp_ln620 { ap_none {  { icmp_ln620 in_data 0 1 } } }
	sub40_cast { ap_none {  { sub40_cast in_data 0 12 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	img { ap_fifo {  { img_dout fifo_data_in 0 120 }  { img_num_data_valid fifo_status_num_data_valid 0 3 }  { img_fifo_cap fifo_update 0 3 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_port_we 1 1 } } }
	pix_39_out { ap_vld {  { pix_39_out out_data 1 10 }  { pix_39_out_ap_vld out_vld 1 1 } } }
	pix_38_out { ap_vld {  { pix_38_out out_data 1 10 }  { pix_38_out_ap_vld out_vld 1 1 } } }
	pix_37_out { ap_vld {  { pix_37_out out_data 1 10 }  { pix_37_out_ap_vld out_vld 1 1 } } }
	pix_36_out { ap_vld {  { pix_36_out out_data 1 10 }  { pix_36_out_ap_vld out_vld 1 1 } } }
	pix_35_out { ap_vld {  { pix_35_out out_data 1 10 }  { pix_35_out_ap_vld out_vld 1 1 } } }
	pix_34_out { ap_vld {  { pix_34_out out_data 1 10 }  { pix_34_out_ap_vld out_vld 1 1 } } }
	pix_33_out { ap_vld {  { pix_33_out out_data 1 10 }  { pix_33_out_ap_vld out_vld 1 1 } } }
	pix_32_out { ap_vld {  { pix_32_out out_data 1 10 }  { pix_32_out_ap_vld out_vld 1 1 } } }
	pix_31_out { ap_vld {  { pix_31_out out_data 1 10 }  { pix_31_out_ap_vld out_vld 1 1 } } }
	pix_30_out { ap_vld {  { pix_30_out out_data 1 10 }  { pix_30_out_ap_vld out_vld 1 1 } } }
	pix_29_out { ap_vld {  { pix_29_out out_data 1 10 }  { pix_29_out_ap_vld out_vld 1 1 } } }
	pix_28_out { ap_vld {  { pix_28_out out_data 1 10 }  { pix_28_out_ap_vld out_vld 1 1 } } }
	out_pix_1_out { ap_ovld {  { out_pix_1_out_i in_data 0 256 }  { out_pix_1_out_o out_data 1 256 }  { out_pix_1_out_o_ap_vld out_vld 1 1 } } }
}
