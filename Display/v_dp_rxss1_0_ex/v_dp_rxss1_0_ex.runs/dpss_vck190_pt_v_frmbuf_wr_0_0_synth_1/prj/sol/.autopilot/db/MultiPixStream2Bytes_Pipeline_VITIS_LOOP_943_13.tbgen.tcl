set moduleName MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_13
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
set C_modelName {MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_13}
set C_modelType { void 0 }
set C_modelArgList {
	{ pix_67 int 10 regular  }
	{ pix_66 int 10 regular  }
	{ pix_65 int 10 regular  }
	{ pix_64 int 10 regular  }
	{ pix_63 int 10 regular  }
	{ pix_62 int 10 regular  }
	{ pix_61 int 10 regular  }
	{ pix_60 int 10 regular  }
	{ pix_59 int 10 regular  }
	{ pix_58 int 10 regular  }
	{ pix_57 int 10 regular  }
	{ pix_56 int 10 regular  }
	{ trunc_ln4 int 11 regular  }
	{ cmp444_2 int 1 regular {ap_stable 0} }
	{ icmp19 int 1 regular {ap_stable 0} }
	{ bytePlanes_plane0 int 256 regular {fifo 1 volatile }  }
	{ cmp444 int 1 regular {ap_stable 0} }
	{ icmp_ln930 int 1 regular {ap_stable 0} }
	{ cmp392_6 int 1 regular {ap_stable 0} }
	{ cmp392_5 int 1 regular {ap_stable 0} }
	{ cmp392_4 int 1 regular {ap_stable 0} }
	{ icmp16 int 1 regular {ap_stable 0} }
	{ cmp392_2 int 1 regular {ap_stable 0} }
	{ icmp13 int 1 regular {ap_stable 0} }
	{ sub389 int 11 regular  }
	{ cmp392 int 1 regular {ap_stable 0} }
	{ img int 120 regular {fifo 0 volatile }  }
	{ pix_79_out int 10 regular {pointer 1}  }
	{ pix_78_out int 10 regular {pointer 1}  }
	{ pix_77_out int 10 regular {pointer 1}  }
	{ pix_76_out int 10 regular {pointer 1}  }
	{ pix_75_out int 10 regular {pointer 1}  }
	{ pix_74_out int 10 regular {pointer 1}  }
	{ pix_73_out int 10 regular {pointer 1}  }
	{ pix_72_out int 10 regular {pointer 1}  }
	{ pix_71_out int 10 regular {pointer 1}  }
	{ pix_70_out int 10 regular {pointer 1}  }
	{ pix_69_out int 10 regular {pointer 1}  }
	{ pix_68_out int 10 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "pix_67", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_66", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_65", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_64", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_63", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_62", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_61", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_60", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_59", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_58", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_57", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_56", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln4", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "cmp444_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp19", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes_plane0", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cmp444", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln930", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp392_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp392_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp392_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp16", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp392_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp13", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub389", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "cmp392", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 120, "direction" : "READONLY"} , 
 	{ "Name" : "pix_79_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_78_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_77_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_76_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_75_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_74_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_73_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_72_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_71_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_70_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_69_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_68_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 120 signal 26 } 
	{ img_num_data_valid sc_in sc_lv 3 signal 26 } 
	{ img_fifo_cap sc_in sc_lv 3 signal 26 } 
	{ img_empty_n sc_in sc_logic 1 signal 26 } 
	{ img_read sc_out sc_logic 1 signal 26 } 
	{ bytePlanes_plane0_din sc_out sc_lv 256 signal 15 } 
	{ bytePlanes_plane0_num_data_valid sc_in sc_lv 10 signal 15 } 
	{ bytePlanes_plane0_fifo_cap sc_in sc_lv 10 signal 15 } 
	{ bytePlanes_plane0_full_n sc_in sc_logic 1 signal 15 } 
	{ bytePlanes_plane0_write sc_out sc_logic 1 signal 15 } 
	{ pix_67 sc_in sc_lv 10 signal 0 } 
	{ pix_66 sc_in sc_lv 10 signal 1 } 
	{ pix_65 sc_in sc_lv 10 signal 2 } 
	{ pix_64 sc_in sc_lv 10 signal 3 } 
	{ pix_63 sc_in sc_lv 10 signal 4 } 
	{ pix_62 sc_in sc_lv 10 signal 5 } 
	{ pix_61 sc_in sc_lv 10 signal 6 } 
	{ pix_60 sc_in sc_lv 10 signal 7 } 
	{ pix_59 sc_in sc_lv 10 signal 8 } 
	{ pix_58 sc_in sc_lv 10 signal 9 } 
	{ pix_57 sc_in sc_lv 10 signal 10 } 
	{ pix_56 sc_in sc_lv 10 signal 11 } 
	{ trunc_ln4 sc_in sc_lv 11 signal 12 } 
	{ cmp444_2 sc_in sc_lv 1 signal 13 } 
	{ icmp19 sc_in sc_lv 1 signal 14 } 
	{ cmp444 sc_in sc_lv 1 signal 16 } 
	{ icmp_ln930 sc_in sc_lv 1 signal 17 } 
	{ cmp392_6 sc_in sc_lv 1 signal 18 } 
	{ cmp392_5 sc_in sc_lv 1 signal 19 } 
	{ cmp392_4 sc_in sc_lv 1 signal 20 } 
	{ icmp16 sc_in sc_lv 1 signal 21 } 
	{ cmp392_2 sc_in sc_lv 1 signal 22 } 
	{ icmp13 sc_in sc_lv 1 signal 23 } 
	{ sub389 sc_in sc_lv 11 signal 24 } 
	{ cmp392 sc_in sc_lv 1 signal 25 } 
	{ pix_79_out sc_out sc_lv 10 signal 27 } 
	{ pix_79_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ pix_78_out sc_out sc_lv 10 signal 28 } 
	{ pix_78_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ pix_77_out sc_out sc_lv 10 signal 29 } 
	{ pix_77_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ pix_76_out sc_out sc_lv 10 signal 30 } 
	{ pix_76_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ pix_75_out sc_out sc_lv 10 signal 31 } 
	{ pix_75_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ pix_74_out sc_out sc_lv 10 signal 32 } 
	{ pix_74_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ pix_73_out sc_out sc_lv 10 signal 33 } 
	{ pix_73_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ pix_72_out sc_out sc_lv 10 signal 34 } 
	{ pix_72_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ pix_71_out sc_out sc_lv 10 signal 35 } 
	{ pix_71_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ pix_70_out sc_out sc_lv 10 signal 36 } 
	{ pix_70_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ pix_69_out sc_out sc_lv 10 signal 37 } 
	{ pix_69_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ pix_68_out sc_out sc_lv 10 signal 38 } 
	{ pix_68_out_ap_vld sc_out sc_logic 1 outvld 38 } 
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
 	{ "name": "bytePlanes_plane0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "din" }} , 
 	{ "name": "bytePlanes_plane0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane0", "role": "write" }} , 
 	{ "name": "pix_67", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_67", "role": "default" }} , 
 	{ "name": "pix_66", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_66", "role": "default" }} , 
 	{ "name": "pix_65", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_65", "role": "default" }} , 
 	{ "name": "pix_64", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_64", "role": "default" }} , 
 	{ "name": "pix_63", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_63", "role": "default" }} , 
 	{ "name": "pix_62", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_62", "role": "default" }} , 
 	{ "name": "pix_61", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_61", "role": "default" }} , 
 	{ "name": "pix_60", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_60", "role": "default" }} , 
 	{ "name": "pix_59", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_59", "role": "default" }} , 
 	{ "name": "pix_58", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_58", "role": "default" }} , 
 	{ "name": "pix_57", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_57", "role": "default" }} , 
 	{ "name": "pix_56", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_56", "role": "default" }} , 
 	{ "name": "trunc_ln4", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "trunc_ln4", "role": "default" }} , 
 	{ "name": "cmp444_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp444_2", "role": "default" }} , 
 	{ "name": "icmp19", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp19", "role": "default" }} , 
 	{ "name": "cmp444", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp444", "role": "default" }} , 
 	{ "name": "icmp_ln930", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln930", "role": "default" }} , 
 	{ "name": "cmp392_6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp392_6", "role": "default" }} , 
 	{ "name": "cmp392_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp392_5", "role": "default" }} , 
 	{ "name": "cmp392_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp392_4", "role": "default" }} , 
 	{ "name": "icmp16", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp16", "role": "default" }} , 
 	{ "name": "cmp392_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp392_2", "role": "default" }} , 
 	{ "name": "icmp13", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp13", "role": "default" }} , 
 	{ "name": "sub389", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sub389", "role": "default" }} , 
 	{ "name": "cmp392", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp392", "role": "default" }} , 
 	{ "name": "pix_79_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_79_out", "role": "default" }} , 
 	{ "name": "pix_79_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_79_out", "role": "ap_vld" }} , 
 	{ "name": "pix_78_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_78_out", "role": "default" }} , 
 	{ "name": "pix_78_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_78_out", "role": "ap_vld" }} , 
 	{ "name": "pix_77_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_77_out", "role": "default" }} , 
 	{ "name": "pix_77_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_77_out", "role": "ap_vld" }} , 
 	{ "name": "pix_76_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_76_out", "role": "default" }} , 
 	{ "name": "pix_76_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_76_out", "role": "ap_vld" }} , 
 	{ "name": "pix_75_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_75_out", "role": "default" }} , 
 	{ "name": "pix_75_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_75_out", "role": "ap_vld" }} , 
 	{ "name": "pix_74_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_74_out", "role": "default" }} , 
 	{ "name": "pix_74_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_74_out", "role": "ap_vld" }} , 
 	{ "name": "pix_73_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_73_out", "role": "default" }} , 
 	{ "name": "pix_73_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_73_out", "role": "ap_vld" }} , 
 	{ "name": "pix_72_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_72_out", "role": "default" }} , 
 	{ "name": "pix_72_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_72_out", "role": "ap_vld" }} , 
 	{ "name": "pix_71_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_71_out", "role": "default" }} , 
 	{ "name": "pix_71_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_71_out", "role": "ap_vld" }} , 
 	{ "name": "pix_70_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_70_out", "role": "default" }} , 
 	{ "name": "pix_70_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_70_out", "role": "ap_vld" }} , 
 	{ "name": "pix_69_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_69_out", "role": "default" }} , 
 	{ "name": "pix_69_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_69_out", "role": "ap_vld" }} , 
 	{ "name": "pix_68_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_68_out", "role": "default" }} , 
 	{ "name": "pix_68_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_68_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		pix_68_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "5467"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "5467"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pix_67 { ap_none {  { pix_67 in_data 0 10 } } }
	pix_66 { ap_none {  { pix_66 in_data 0 10 } } }
	pix_65 { ap_none {  { pix_65 in_data 0 10 } } }
	pix_64 { ap_none {  { pix_64 in_data 0 10 } } }
	pix_63 { ap_none {  { pix_63 in_data 0 10 } } }
	pix_62 { ap_none {  { pix_62 in_data 0 10 } } }
	pix_61 { ap_none {  { pix_61 in_data 0 10 } } }
	pix_60 { ap_none {  { pix_60 in_data 0 10 } } }
	pix_59 { ap_none {  { pix_59 in_data 0 10 } } }
	pix_58 { ap_none {  { pix_58 in_data 0 10 } } }
	pix_57 { ap_none {  { pix_57 in_data 0 10 } } }
	pix_56 { ap_none {  { pix_56 in_data 0 10 } } }
	trunc_ln4 { ap_none {  { trunc_ln4 in_data 0 11 } } }
	cmp444_2 { ap_stable {  { cmp444_2 in_data 0 1 } } }
	icmp19 { ap_stable {  { icmp19 in_data 0 1 } } }
	bytePlanes_plane0 { ap_fifo {  { bytePlanes_plane0_din fifo_data_in 1 256 }  { bytePlanes_plane0_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes_plane0_fifo_cap fifo_update 0 10 }  { bytePlanes_plane0_full_n fifo_status 0 1 }  { bytePlanes_plane0_write fifo_port_we 1 1 } } }
	cmp444 { ap_stable {  { cmp444 in_data 0 1 } } }
	icmp_ln930 { ap_stable {  { icmp_ln930 in_data 0 1 } } }
	cmp392_6 { ap_stable {  { cmp392_6 in_data 0 1 } } }
	cmp392_5 { ap_stable {  { cmp392_5 in_data 0 1 } } }
	cmp392_4 { ap_stable {  { cmp392_4 in_data 0 1 } } }
	icmp16 { ap_stable {  { icmp16 in_data 0 1 } } }
	cmp392_2 { ap_stable {  { cmp392_2 in_data 0 1 } } }
	icmp13 { ap_stable {  { icmp13 in_data 0 1 } } }
	sub389 { ap_none {  { sub389 in_data 0 11 } } }
	cmp392 { ap_stable {  { cmp392 in_data 0 1 } } }
	img { ap_fifo {  { img_dout fifo_data_in 0 120 }  { img_num_data_valid fifo_status_num_data_valid 0 3 }  { img_fifo_cap fifo_update 0 3 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_port_we 1 1 } } }
	pix_79_out { ap_vld {  { pix_79_out out_data 1 10 }  { pix_79_out_ap_vld out_vld 1 1 } } }
	pix_78_out { ap_vld {  { pix_78_out out_data 1 10 }  { pix_78_out_ap_vld out_vld 1 1 } } }
	pix_77_out { ap_vld {  { pix_77_out out_data 1 10 }  { pix_77_out_ap_vld out_vld 1 1 } } }
	pix_76_out { ap_vld {  { pix_76_out out_data 1 10 }  { pix_76_out_ap_vld out_vld 1 1 } } }
	pix_75_out { ap_vld {  { pix_75_out out_data 1 10 }  { pix_75_out_ap_vld out_vld 1 1 } } }
	pix_74_out { ap_vld {  { pix_74_out out_data 1 10 }  { pix_74_out_ap_vld out_vld 1 1 } } }
	pix_73_out { ap_vld {  { pix_73_out out_data 1 10 }  { pix_73_out_ap_vld out_vld 1 1 } } }
	pix_72_out { ap_vld {  { pix_72_out out_data 1 10 }  { pix_72_out_ap_vld out_vld 1 1 } } }
	pix_71_out { ap_vld {  { pix_71_out out_data 1 10 }  { pix_71_out_ap_vld out_vld 1 1 } } }
	pix_70_out { ap_vld {  { pix_70_out out_data 1 10 }  { pix_70_out_ap_vld out_vld 1 1 } } }
	pix_69_out { ap_vld {  { pix_69_out out_data 1 10 }  { pix_69_out_ap_vld out_vld 1 1 } } }
	pix_68_out { ap_vld {  { pix_68_out out_data 1 10 }  { pix_68_out_ap_vld out_vld 1 1 } } }
}
