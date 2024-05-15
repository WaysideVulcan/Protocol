# file: dpss_vck190_pt_v_dp_txss1_0_0.xdc (IP Level XDC)


# This constraints file contains default clock frequencies to be used during creation of a
# Synthesis Design Checkpoint (DCP). For best results the frequencies should be modified
# to match the target frequencies. 
# This constraints file is not used in top-down/global synthesis (not the default flow of Vivado).


create_waiver -scope -internal -quiet -user displayport_tx -tags 10897 -type CDC -id CDC-1 -description "HCOUNT is a stable value for a given resolution" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *v_dual_splitter_core_inst*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*} -of_objects [get_cells -hierarchical -filter {NAME =~ *v_dual_splitter_core_inst*}]]

create_waiver -scope -internal -quiet -user displayport_tx -tags 10897 -type CDC -id CDC-13 -description "In vertical splitter which is a stable legacy core. Hence waiving off" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ */vs/*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*} -of_objects [get_cells -hierarchical -filter {NAME =~ */vs/*}]]

create_waiver -scope -internal -quiet -user displayport_tx -tags 10897 -type CDC -id CDC-2 -description "Waiving all CDC-2 warnings of ASYNC_REG for 2023.2 release" \
  -from *PIN \
  -to   *PIN
