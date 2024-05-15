# (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Advanced Micro Devices and is protected under U.S. and international copyright
# and other intellectual property laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# AMD, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) AMD shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or AMD had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# AMD products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of AMD products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
############################################################
set_property IOSTANDARD LVCMOS18 [get_ports reset]
set_property PACKAGE_PIN G37 [get_ports reset]


create_clock -period 3.703 [get_ports refclk_clk_p]
set_property PACKAGE_PIN F15  [get_ports refclk_clk_p]
set_property PACKAGE_PIN K7 [get_ports GT_Serial_gtx_p[0]]
set_property PACKAGE_PIN K2 [get_ports GT_Serial_grx_p[0]]

#AUX TX
set_property IOSTANDARD LVCMOS15 [get_ports tx_hpd]
set_property PACKAGE_PIN BF11 [get_ports tx_hpd]

#TX AUX
set_property IOSTANDARD LVCMOS15 [get_ports {aux_tx_data_en_out_n}]
set_property PACKAGE_PIN BG11 [get_ports {aux_tx_data_en_out_n}]

set_property IOSTANDARD LVCMOS15 [get_ports aux_tx_data_out]
set_property PACKAGE_PIN AU15 [get_ports aux_tx_data_out]

set_property IOSTANDARD LVCMOS15 [get_ports aux_tx_data_in]
set_property PACKAGE_PIN AU12 [get_ports aux_tx_data_in]

set_property IOSTANDARD LVCMOS15 [get_ports rx_hpd]
set_property PACKAGE_PIN AR11 [get_ports rx_hpd]

#RX AUX
set_property IOSTANDARD LVCMOS15 [get_ports {aux_rx_data_en_out_n}]
set_property PACKAGE_PIN AT11 [get_ports {aux_rx_data_en_out_n}]

set_property IOSTANDARD LVCMOS15 [get_ports aux_rx_data_out]
set_property PACKAGE_PIN AY11 [get_ports aux_rx_data_out]

set_property IOSTANDARD LVCMOS15 [get_ports aux_rx_data_in]
set_property PACKAGE_PIN BA11 [get_ports aux_rx_data_in]

set_property IOSTANDARD LVCMOS15 [get_ports {pwd}]
set_property PACKAGE_PIN AT14 [get_ports {pwd}]

#Audio pins
create_clock -period 27.126 -name mclk_in [get_ports aud_mclk_in_clk_p]

#set_property IOSTANDARD LVDS [get_ports {aud_mclk_in_clk_p[0]}]
#set_property IOSTANDARD LVDS [get_ports {aud_mclk_in_clk_n[0]}]

set_property PACKAGE_PIN E40 [get_ports {aud_mclk_in_clk_n[0]}]
set_property PACKAGE_PIN E39 [get_ports {aud_mclk_in_clk_p[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {OBUF_DS_P_0[0]}]
set_property PACKAGE_PIN L19 [get_ports {OBUF_DS_P_0[0]}]

set_property PACKAGE_PIN BD15 [get_ports lrclk_tx]
set_property IOSTANDARD LVCMOS15 [get_ports lrclk_tx]
set_property PACKAGE_PIN BD14 [get_ports sclk_tx]
set_property IOSTANDARD LVCMOS15 [get_ports sclk_tx]
set_property PACKAGE_PIN BA13 [get_ports sdata_tx]
set_property IOSTANDARD LVCMOS15 [get_ports sdata_tx]
set_property PACKAGE_PIN AY14 [get_ports mclk_out_tx]
set_property IOSTANDARD LVCMOS15 [get_ports mclk_out_tx]

set_property PACKAGE_PIN AR12 [get_ports lrclk_rx]
set_property IOSTANDARD LVCMOS15 [get_ports lrclk_rx]
set_property PACKAGE_PIN AP11 [get_ports sclk_rx]
set_property IOSTANDARD LVCMOS15 [get_ports sclk_rx]
set_property PACKAGE_PIN AV19 [get_ports sdata_rx]
set_property IOSTANDARD LVCMOS15 [get_ports sdata_rx]
set_property PACKAGE_PIN AV18 [get_ports mclk_out_rx]
set_property IOSTANDARD LVCMOS15 [get_ports mclk_out_rx]

# I2C
#HDMI_CTL_SCL
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_scl_io]
set_property PACKAGE_PIN K17 [get_ports IIC_0_scl_io]
#HDMI_CTL_SDA
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_sda_io]
set_property PACKAGE_PIN L18 [get_ports IIC_0_sda_io]

# this clock is updated to generate /20 clock at run time
create_clock -period 2.469 [get_pins -hierarchical *quad_base/ch1_txoutclk]


# This DRC for Versal Tri-state buffer is waived off as the input of 
# IIC tri-state buffer is never toggling. Input of the tri-state buffer is always 0
create_waiver -type DRC -id RPBF-8 -description {Waiver for AR76846} -object [get_cells IIC_0_scl_iobuf]
create_waiver -type DRC -id RPBF-8 -description {Waiver for AR76846} -object [get_cells IIC_0_sda_iobuf]

