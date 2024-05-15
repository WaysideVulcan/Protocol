set moduleName MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9
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
set C_modelName {MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ pix_27 int 10 regular  }
	{ pix_26 int 10 regular  }
	{ pix_25 int 10 regular  }
	{ pix_24 int 10 regular  }
	{ pix_23 int 10 regular  }
	{ pix_22 int 10 regular  }
	{ pix_21 int 10 regular  }
	{ pix_20 int 10 regular  }
	{ trunc_ln789_1 int 12 regular  }
	{ bytePlanes_plane1 int 256 regular {fifo 1 volatile }  }
	{ bytePlanes_plane0 int 256 regular {fifo 1 volatile }  }
	{ VideoFormat_val int 6 regular {ap_stable 0} }
	{ empty_66 int 1 regular  }
	{ cmp223_5 int 1 regular {ap_stable 0} }
	{ cmp223_4 int 1 regular {ap_stable 0} }
	{ empty int 1 regular {ap_stable 0} }
	{ cmp223_2 int 1 regular {ap_stable 0} }
	{ icmp9 int 1 regular {ap_stable 0} }
	{ sub220_cast int 12 regular  }
	{ cmp223 int 1 regular {ap_stable 0} }
	{ img int 120 regular {fifo 0 volatile }  }
	{ pix_55_out int 10 regular {pointer 1}  }
	{ pix_54_out int 10 regular {pointer 1}  }
	{ pix_53_out int 10 regular {pointer 1}  }
	{ pix_52_out int 10 regular {pointer 1}  }
	{ pix_51_out int 10 regular {pointer 1}  }
	{ pix_50_out int 10 regular {pointer 1}  }
	{ pix_49_out int 10 regular {pointer 1}  }
	{ pix_48_out int 10 regular {pointer 1}  }
	{ out_pix_UV_1_out int 256 regular {pointer 2}  }
	{ out_pix_Y_1_out int 256 regular {pointer 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "pix_27", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_26", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_25", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_24", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_23", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_22", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_21", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_20", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln789_1", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes_plane1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bytePlanes_plane0", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "VideoFormat_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "empty_66", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp223_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp223_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp223_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp9", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub220_cast", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "cmp223", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 120, "direction" : "READONLY"} , 
 	{ "Name" : "pix_55_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_54_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_53_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_52_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_51_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_50_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_49_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_48_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_pix_UV_1_out", "interface" : "wire", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "out_pix_Y_1_out", "interface" : "wire", "bitwidth" : 256, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 61
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 120 signal 20 } 
	{ img_num_data_valid sc_in sc_lv 3 signal 20 } 
	{ img_fifo_cap sc_in sc_lv 3 signal 20 } 
	{ img_empty_n sc_in sc_logic 1 signal 20 } 
	{ img_read sc_out sc_logic 1 signal 20 } 
	{ pix_27 sc_in sc_lv 10 signal 0 } 
	{ pix_26 sc_in sc_lv 10 signal 1 } 
	{ pix_25 sc_in sc_lv 10 signal 2 } 
	{ pix_24 sc_in sc_lv 10 signal 3 } 
	{ pix_23 sc_in sc_lv 10 signal 4 } 
	{ pix_22 sc_in sc_lv 10 signal 5 } 
	{ pix_21 sc_in sc_lv 10 signal 6 } 
	{ pix_20 sc_in sc_lv 10 signal 7 } 
	{ trunc_ln789_1 sc_in sc_lv 12 signal 8 } 
	{ bytePlanes_plane1_din sc_out sc_lv 256 signal 9 } 
	{ bytePlanes_plane1_num_data_valid sc_in sc_lv 10 signal 9 } 
	{ bytePlanes_plane1_fifo_cap sc_in sc_lv 10 signal 9 } 
	{ bytePlanes_plane1_full_n sc_in sc_logic 1 signal 9 } 
	{ bytePlanes_plane1_write sc_out sc_logic 1 signal 9 } 
	{ bytePlanes_plane0_din sc_out sc_lv 256 signal 10 } 
	{ bytePlanes_plane0_num_data_valid sc_in sc_lv 10 signal 10 } 
	{ bytePlanes_plane0_fifo_cap sc_in sc_lv 10 signal 10 } 
	{ bytePlanes_plane0_full_n sc_in sc_logic 1 signal 10 } 
	{ bytePlanes_plane0_write sc_out sc_logic 1 signal 10 } 
	{ VideoFormat_val sc_in sc_lv 6 signal 11 } 
	{ empty_66 sc_in sc_lv 1 signal 12 } 
	{ cmp223_5 sc_in sc_lv 1 signal 13 } 
	{ cmp223_4 sc_in sc_lv 1 signal 14 } 
	{ empty sc_in sc_lv 1 signal 15 } 
	{ cmp223_2 sc_in sc_lv 1 signal 16 } 
	{ icmp9 sc_in sc_lv 1 signal 17 } 
	{ sub220_cast sc_in sc_lv 12 signal 18 } 
	{ cmp223 sc_in sc_lv 1 signal 19 } 
	{ pix_55_out sc_out sc_lv 10 signal 21 } 
	{ pix_55_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ pix_54_out sc_out sc_lv 10 signal 22 } 
	{ pix_54_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ pix_53_out sc_out sc_lv 10 signal 23 } 
	{ pix_53_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ pix_52_out sc_out sc_lv 10 signal 24 } 
	{ pix_52_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ pix_51_out sc_out sc_lv 10 signal 25 } 
	{ pix_51_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ pix_50_out sc_out sc_lv 10 signal 26 } 
	{ pix_50_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ pix_49_out sc_out sc_lv 10 signal 27 } 
	{ pix_49_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ pix_48_out sc_out sc_lv 10 signal 28 } 
	{ pix_48_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ out_pix_UV_1_out_i sc_in sc_lv 256 signal 29 } 
	{ out_pix_UV_1_out_o sc_out sc_lv 256 signal 29 } 
	{ out_pix_UV_1_out_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ out_pix_Y_1_out_i sc_in sc_lv 256 signal 30 } 
	{ out_pix_Y_1_out_o sc_out sc_lv 256 signal 30 } 
	{ out_pix_Y_1_out_o_ap_vld sc_out sc_logic 1 outvld 30 } 
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
 	{ "name": "pix_27", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_27", "role": "default" }} , 
 	{ "name": "pix_26", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_26", "role": "default" }} , 
 	{ "name": "pix_25", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_25", "role": "default" }} , 
 	{ "name": "pix_24", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_24", "role": "default" }} , 
 	{ "name": "pix_23", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_23", "role": "default" }} , 
 	{ "name": "pix_22", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_22", "role": "default" }} , 
 	{ "name": "pix_21", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_21", "role": "default" }} , 
 	{ "name": "pix_20", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_20", "role": "default" }} , 
 	{ "name": "trunc_ln789_1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "trunc_ln789_1", "role": "default" }} , 
 	{ "name": "bytePlanes_plane1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "din" }} , 
 	{ "name": "bytePlanes_plane1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane1", "role": "write" }} , 
 	{ "name": "bytePlanes_plane0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "din" }} , 
 	{ "name": "bytePlanes_plane0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "write" }} , 
 	{ "name": "VideoFormat_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "VideoFormat_val", "role": "default" }} , 
 	{ "name": "empty_66", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_66", "role": "default" }} , 
 	{ "name": "cmp223_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp223_5", "role": "default" }} , 
 	{ "name": "cmp223_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp223_4", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "cmp223_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp223_2", "role": "default" }} , 
 	{ "name": "icmp9", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp9", "role": "default" }} , 
 	{ "name": "sub220_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sub220_cast", "role": "default" }} , 
 	{ "name": "cmp223", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp223", "role": "default" }} , 
 	{ "name": "pix_55_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_55_out", "role": "default" }} , 
 	{ "name": "pix_55_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_55_out", "role": "ap_vld" }} , 
 	{ "name": "pix_54_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_54_out", "role": "default" }} , 
 	{ "name": "pix_54_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_54_out", "role": "ap_vld" }} , 
 	{ "name": "pix_53_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_53_out", "role": "default" }} , 
 	{ "name": "pix_53_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_53_out", "role": "ap_vld" }} , 
 	{ "name": "pix_52_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_52_out", "role": "default" }} , 
 	{ "name": "pix_52_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_52_out", "role": "ap_vld" }} , 
 	{ "name": "pix_51_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_51_out", "role": "default" }} , 
 	{ "name": "pix_51_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_51_out", "role": "ap_vld" }} , 
 	{ "name": "pix_50_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_50_out", "role": "default" }} , 
 	{ "name": "pix_50_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_50_out", "role": "ap_vld" }} , 
 	{ "name": "pix_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_49_out", "role": "default" }} , 
 	{ "name": "pix_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_49_out", "role": "ap_vld" }} , 
 	{ "name": "pix_48_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_48_out", "role": "default" }} , 
 	{ "name": "pix_48_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_48_out", "role": "ap_vld" }} , 
 	{ "name": "out_pix_UV_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_pix_UV_1_out", "role": "i" }} , 
 	{ "name": "out_pix_UV_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_pix_UV_1_out", "role": "o" }} , 
 	{ "name": "out_pix_UV_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_pix_UV_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "out_pix_Y_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_pix_Y_1_out", "role": "i" }} , 
 	{ "name": "out_pix_Y_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_pix_Y_1_out", "role": "o" }} , 
 	{ "name": "out_pix_Y_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_pix_Y_1_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		out_pix_Y_1_out {Type IO LastRead 6 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "12291"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "12291"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pix_27 { ap_none {  { pix_27 in_data 0 10 } } }
	pix_26 { ap_none {  { pix_26 in_data 0 10 } } }
	pix_25 { ap_none {  { pix_25 in_data 0 10 } } }
	pix_24 { ap_none {  { pix_24 in_data 0 10 } } }
	pix_23 { ap_none {  { pix_23 in_data 0 10 } } }
	pix_22 { ap_none {  { pix_22 in_data 0 10 } } }
	pix_21 { ap_none {  { pix_21 in_data 0 10 } } }
	pix_20 { ap_none {  { pix_20 in_data 0 10 } } }
	trunc_ln789_1 { ap_none {  { trunc_ln789_1 in_data 0 12 } } }
	bytePlanes_plane1 { ap_fifo {  { bytePlanes_plane1_din fifo_data_in 1 256 }  { bytePlanes_plane1_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_plane1_fifo_cap fifo_update 0 10 }  { bytePlanes_plane1_full_n fifo_status 0 1 }  { bytePlanes_plane1_write fifo_port_we 1 1 } } }
	bytePlanes_plane0 { ap_fifo {  { bytePlanes_plane0_din fifo_data_in 1 256 }  { bytePlanes_plane0_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_plane0_fifo_cap fifo_update 0 10 }  { bytePlanes_plane0_full_n fifo_status 0 1 }  { bytePlanes_plane0_write fifo_port_we 1 1 } } }
	VideoFormat_val { ap_stable {  { VideoFormat_val in_data 0 6 } } }
	empty_66 { ap_none {  { empty_66 in_data 0 1 } } }
	cmp223_5 { ap_stable {  { cmp223_5 in_data 0 1 } } }
	cmp223_4 { ap_stable {  { cmp223_4 in_data 0 1 } } }
	empty { ap_stable {  { empty in_data 0 1 } } }
	cmp223_2 { ap_stable {  { cmp223_2 in_data 0 1 } } }
	icmp9 { ap_stable {  { icmp9 in_data 0 1 } } }
	sub220_cast { ap_none {  { sub220_cast in_data 0 12 } } }
	cmp223 { ap_stable {  { cmp223 in_data 0 1 } } }
	img { ap_fifo {  { img_dout fifo_data_in 0 120 }  { img_num_data_valid fifo_status_num_data_valid 0 3 }  { img_fifo_cap fifo_update 0 3 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_port_we 1 1 } } }
	pix_55_out { ap_vld {  { pix_55_out out_data 1 10 }  { pix_55_out_ap_vld out_vld 1 1 } } }
	pix_54_out { ap_vld {  { pix_54_out out_data 1 10 }  { pix_54_out_ap_vld out_vld 1 1 } } }
	pix_53_out { ap_vld {  { pix_53_out out_data 1 10 }  { pix_53_out_ap_vld out_vld 1 1 } } }
	pix_52_out { ap_vld {  { pix_52_out out_data 1 10 }  { pix_52_out_ap_vld out_vld 1 1 } } }
	pix_51_out { ap_vld {  { pix_51_out out_data 1 10 }  { pix_51_out_ap_vld out_vld 1 1 } } }
	pix_50_out { ap_vld {  { pix_50_out out_data 1 10 }  { pix_50_out_ap_vld out_vld 1 1 } } }
	pix_49_out { ap_vld {  { pix_49_out out_data 1 10 }  { pix_49_out_ap_vld out_vld 1 1 } } }
	pix_48_out { ap_vld {  { pix_48_out out_data 1 10 }  { pix_48_out_ap_vld out_vld 1 1 } } }
	out_pix_UV_1_out { ap_ovld {  { out_pix_UV_1_out_i in_data 0 256 }  { out_pix_UV_1_out_o out_data 1 256 }  { out_pix_UV_1_out_o_ap_vld out_vld 1 1 } } }
	out_pix_Y_1_out { ap_ovld {  { out_pix_Y_1_out_i in_data 0 256 }  { out_pix_Y_1_out_o out_data 1 256 }  { out_pix_Y_1_out_o_ap_vld out_vld 1 1 } } }
}
