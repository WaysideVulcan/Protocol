create_clock -period 10.000 [get_ports -no_traverse {IBUF_DS_ODIV2[0] IBUF_OUT[0]}]
set_property -quiet IO_BUFFER_TYPE NONE [get_ports -quiet IBUF_DS_CEB[0]]
set_property -quiet CLOCK_BUFFER_TYPE NONE [get_ports -quiet IBUF_DS_CEB[0]]
set_property -quiet IO_BUFFER_TYPE NONE [get_ports -quiet IBUF_DS_N[0]]
set_property -quiet CLOCK_BUFFER_TYPE NONE [get_ports -quiet IBUF_DS_N[0]]
set_property -quiet IO_BUFFER_TYPE NONE [get_ports -quiet IBUF_DS_P[0]]
set_property -quiet CLOCK_BUFFER_TYPE NONE [get_ports -quiet IBUF_DS_P[0]]
set_property -quiet CLOCK_PERIOD_OOC_TARGET 10.000 [get_ports -no_traverse -quiet IBUF_DS_ODIV2[0]]
set_property -quiet CLOCK_PERIOD_OOC_TARGET 10.000 [get_ports -no_traverse -quiet IBUF_DS_P[0]]
set_property -quiet CLOCK_PERIOD_OOC_TARGET 10.000 [get_ports -no_traverse -quiet IBUF_OUT[0]]
set_property -quiet IS_IP_OOC_CELL TRUE [get_cells -of [get_ports -no_traverse -quiet IBUF_DS_CEB[0]]]
