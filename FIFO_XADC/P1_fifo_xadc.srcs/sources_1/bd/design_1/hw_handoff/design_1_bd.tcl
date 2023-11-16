
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k70tfbv676-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set Vp_Vn_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vp_Vn_0 ]
  set s_drp_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:drp_rtl:1.0 s_drp_0 ]

  # Create ports
  set FIFO_out [ create_bd_port -dir O -from 11 -to 0 FIFO_out ]
  set alarm_out_0 [ create_bd_port -dir O alarm_out_0 ]
  set almost_full [ create_bd_port -dir O almost_full ]
  set busy_out_0 [ create_bd_port -dir O busy_out_0 ]
  set channel_out_0 [ create_bd_port -dir O -from 4 -to 0 channel_out_0 ]
  set dclk_in_0 [ create_bd_port -dir I -type clk dclk_in_0 ]
  set do_out [ create_bd_port -dir O -from 15 -to 0 do_out ]
  set empty [ create_bd_port -dir O empty ]
  set eoc_out_0 [ create_bd_port -dir O eoc_out_0 ]
  set eos_out_0 [ create_bd_port -dir O eos_out_0 ]
  set full [ create_bd_port -dir O full ]
  set ot_out_0 [ create_bd_port -dir O ot_out_0 ]
  set prog_full [ create_bd_port -dir O prog_full ]
  set rd_clk [ create_bd_port -dir I -type clk rd_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $rd_clk
  set rd_data_count [ create_bd_port -dir O -from 7 -to 0 rd_data_count ]
  set rd_en [ create_bd_port -dir I rd_en ]
  set rd_rst_busy [ create_bd_port -dir O rd_rst_busy ]
  set reset_in_0 [ create_bd_port -dir I -type rst reset_in_0 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset_in_0
  set slice_out [ create_bd_port -dir O -from 11 -to 0 slice_out ]
  set wr_clk [ create_bd_port -dir I -type clk wr_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $wr_clk
  set wr_data_count [ create_bd_port -dir O -from 7 -to 0 wr_data_count ]
  set wr_en [ create_bd_port -dir I wr_en ]
  set wr_rst_busy [ create_bd_port -dir O wr_rst_busy ]

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Full_Flag {true} \
   CONFIG.Data_Count_Width {8} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {200} \
   CONFIG.Full_Threshold_Negate_Value {199} \
   CONFIG.Input_Data_Width {12} \
   CONFIG.Input_Depth {256} \
   CONFIG.Output_Data_Width {12} \
   CONFIG.Output_Depth {256} \
   CONFIG.Programmable_Full_Type {Single_Programmable_Full_Threshold_Constant} \
   CONFIG.Read_Data_Count {true} \
   CONFIG.Read_Data_Count_Width {8} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Write_Data_Count {true} \
   CONFIG.Write_Data_Count_Width {8} \
 ] $fifo_generator_0

  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 xadc_wiz_0 ]
  set_property -dict [ list \
   CONFIG.ADC_CONVERSION_RATE {1000} \
   CONFIG.DCLK_FREQUENCY {52} \
   CONFIG.ENABLE_RESET {true} \
   CONFIG.INTERFACE_SELECTION {ENABLE_DRP} \
   CONFIG.SIM_FILE_NAME {design} \
   CONFIG.SIM_FILE_REL_PATH {./} \
   CONFIG.SIM_FILE_SEL {Default} \
   CONFIG.SINGLE_CHANNEL_ENABLE_CALIBRATION {true} \
   CONFIG.SINGLE_CHANNEL_SELECTION {VP_VN} \
   CONFIG.STIMULUS_FREQ {13} \
   CONFIG.TEMPERATURE_ALARM_OT_TRIGGER {100.0} \
   CONFIG.USER_TEMP_ALARM {false} \
   CONFIG.VCCAUX_ALARM {false} \
   CONFIG.VCCINT_ALARM {false} \
   CONFIG.WAVEFORM_TYPE {TRIANGLE} \
 ] $xadc_wiz_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {12} \
 ] $xlslice_0

  # Create interface connections
  connect_bd_intf_net -intf_net Vp_Vn_0_1 [get_bd_intf_ports Vp_Vn_0] [get_bd_intf_pins xadc_wiz_0/Vp_Vn]
  connect_bd_intf_net -intf_net s_drp_0_1 [get_bd_intf_ports s_drp_0] [get_bd_intf_pins xadc_wiz_0/s_drp]

  # Create port connections
  connect_bd_net -net dclk_in_0_1 [get_bd_ports dclk_in_0] [get_bd_pins xadc_wiz_0/dclk_in]
  connect_bd_net -net fifo_generator_0_almost_full [get_bd_ports almost_full] [get_bd_pins fifo_generator_0/almost_full]
  connect_bd_net -net fifo_generator_0_dout [get_bd_ports FIFO_out] [get_bd_pins fifo_generator_0/dout]
  connect_bd_net -net fifo_generator_0_empty [get_bd_ports empty] [get_bd_pins fifo_generator_0/empty]
  connect_bd_net -net fifo_generator_0_full [get_bd_ports full] [get_bd_pins fifo_generator_0/full]
  connect_bd_net -net fifo_generator_0_prog_full [get_bd_ports prog_full] [get_bd_pins fifo_generator_0/prog_full]
  connect_bd_net -net fifo_generator_0_rd_data_count [get_bd_ports rd_data_count] [get_bd_pins fifo_generator_0/rd_data_count]
  connect_bd_net -net fifo_generator_0_rd_rst_busy [get_bd_ports rd_rst_busy] [get_bd_pins fifo_generator_0/rd_rst_busy]
  connect_bd_net -net fifo_generator_0_wr_data_count [get_bd_ports wr_data_count] [get_bd_pins fifo_generator_0/wr_data_count]
  connect_bd_net -net fifo_generator_0_wr_rst_busy [get_bd_ports wr_rst_busy] [get_bd_pins fifo_generator_0/wr_rst_busy]
  connect_bd_net -net rd_clk_1 [get_bd_ports rd_clk] [get_bd_pins fifo_generator_0/rd_clk]
  connect_bd_net -net rd_en_1 [get_bd_ports rd_en] [get_bd_pins fifo_generator_0/rd_en]
  connect_bd_net -net reset_in_0_1 [get_bd_ports reset_in_0] [get_bd_pins fifo_generator_0/rst] [get_bd_pins xadc_wiz_0/reset_in]
  connect_bd_net -net wr_clk_1 [get_bd_ports wr_clk] [get_bd_pins fifo_generator_0/wr_clk]
  connect_bd_net -net wr_en_1 [get_bd_ports wr_en] [get_bd_pins fifo_generator_0/wr_en]
  connect_bd_net -net xadc_wiz_0_alarm_out [get_bd_ports alarm_out_0] [get_bd_pins xadc_wiz_0/alarm_out]
  connect_bd_net -net xadc_wiz_0_busy_out [get_bd_ports busy_out_0] [get_bd_pins xadc_wiz_0/busy_out]
  connect_bd_net -net xadc_wiz_0_channel_out [get_bd_ports channel_out_0] [get_bd_pins xadc_wiz_0/channel_out]
  connect_bd_net -net xadc_wiz_0_do_out [get_bd_ports do_out] [get_bd_pins xadc_wiz_0/do_out] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net xadc_wiz_0_eoc_out [get_bd_ports eoc_out_0] [get_bd_pins xadc_wiz_0/eoc_out]
  connect_bd_net -net xadc_wiz_0_eos_out [get_bd_ports eos_out_0] [get_bd_pins xadc_wiz_0/eos_out]
  connect_bd_net -net xadc_wiz_0_ot_out [get_bd_ports ot_out_0] [get_bd_pins xadc_wiz_0/ot_out]
  connect_bd_net -net xlslice_0_Dout [get_bd_ports slice_out] [get_bd_pins fifo_generator_0/din] [get_bd_pins xlslice_0/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


