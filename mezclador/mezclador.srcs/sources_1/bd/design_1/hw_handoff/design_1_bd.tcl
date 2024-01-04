
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
   create_project project_1 myproj -part xc7k160tifbg676-2L
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
  set M_AXIS_PHASE_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_PHASE_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {192000000} \
   ] $M_AXIS_PHASE_0

  # Create ports
  set Salida_RRC_I [ create_bd_port -dir I -from 23 -to 0 -type data Salida_RRC_I ]
  set Salida_RRC_Q [ create_bd_port -dir I -from 23 -to 0 -type data Salida_RRC_Q ]
  set TX_I [ create_bd_port -dir O -from 34 -to 0 -type data TX_I ]
  set TX_Q [ create_bd_port -dir O -from 34 -to 0 -type data TX_Q ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {192000000} \
 ] $clk
  set coseno [ create_bd_port -dir O -from 10 -to 0 coseno ]
  set m_axis_data_tdata_0 [ create_bd_port -dir O -from 31 -to 0 m_axis_data_tdata_0 ]
  set m_axis_data_tvalid_0 [ create_bd_port -dir O m_axis_data_tvalid_0 ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set seno [ create_bd_port -dir O -from 10 -to 0 seno ]

  # Create instance: cos, and set properties
  set cos [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 cos ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {10} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {11} \
 ] $cos

  # Create instance: dds_compiler_0, and set properties
  set dds_compiler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dds_compiler:6.0 dds_compiler_0 ]
  set_property -dict [ list \
   CONFIG.Channels {1} \
   CONFIG.DATA_Has_TLAST {Not_Required} \
   CONFIG.DDS_Clock_Rate {192} \
   CONFIG.Frequency_Resolution {8789.06} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_Phase_Out {true} \
   CONFIG.Has_TREADY {false} \
   CONFIG.Latency {8} \
   CONFIG.M_DATA_Has_TUSER {Not_Required} \
   CONFIG.M_PHASE_Has_TUSER {Not_Required} \
   CONFIG.Negative_Sine {true} \
   CONFIG.Noise_Shaping {None} \
   CONFIG.Output_Frequency1 {0} \
   CONFIG.Output_Frequency2 {0} \
   CONFIG.Output_Selection {Sine_and_Cosine} \
   CONFIG.Output_Width {16} \
   CONFIG.PINC1 {0} \
   CONFIG.PINC2 {0} \
   CONFIG.Parameter_Entry {Hardware_Parameters} \
   CONFIG.PartsPresent {Phase_Generator_and_SIN_COS_LUT} \
   CONFIG.Phase_Increment {Fixed} \
   CONFIG.Phase_Width {16} \
   CONFIG.Phase_offset {Fixed} \
   CONFIG.S_PHASE_Has_TUSER {Not_Required} \
 ] $dds_compiler_0

  # Create instance: mult0, and set properties
  set mult0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xbip_dsp48_macro:3.0 mult0 ]
  set_property -dict [ list \
   CONFIG.a_width {24} \
   CONFIG.areg_3 {true} \
   CONFIG.areg_4 {true} \
   CONFIG.b_width {11} \
   CONFIG.breg_3 {true} \
   CONFIG.breg_4 {true} \
   CONFIG.creg_3 {false} \
   CONFIG.creg_4 {false} \
   CONFIG.creg_5 {false} \
   CONFIG.instruction1 {A*B} \
   CONFIG.mreg_5 {true} \
   CONFIG.p_binarywidth {0} \
   CONFIG.p_full_width {35} \
   CONFIG.p_width {35} \
   CONFIG.preg_6 {true} \
 ] $mult0

  # Create instance: mult1, and set properties
  set mult1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xbip_dsp48_macro:3.0 mult1 ]
  set_property -dict [ list \
   CONFIG.a_width {24} \
   CONFIG.areg_3 {true} \
   CONFIG.areg_4 {true} \
   CONFIG.b_width {11} \
   CONFIG.breg_3 {true} \
   CONFIG.breg_4 {true} \
   CONFIG.creg_3 {false} \
   CONFIG.creg_4 {false} \
   CONFIG.creg_5 {false} \
   CONFIG.instruction1 {A*B} \
   CONFIG.mreg_5 {true} \
   CONFIG.p_binarywidth {0} \
   CONFIG.p_full_width {35} \
   CONFIG.p_width {35} \
   CONFIG.preg_6 {true} \
 ] $mult1

  # Create instance: sin, and set properties
  set sin [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 sin ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {26} \
   CONFIG.DIN_TO {16} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {11} \
 ] $sin

  # Create interface connections
  connect_bd_intf_net -intf_net dds_compiler_0_M_AXIS_PHASE [get_bd_intf_ports M_AXIS_PHASE_0] [get_bd_intf_pins dds_compiler_0/M_AXIS_PHASE]

  # Create port connections
  connect_bd_net -net A_0_1 [get_bd_ports Salida_RRC_I] [get_bd_pins mult0/A]
  connect_bd_net -net A_0_2 [get_bd_ports Salida_RRC_Q] [get_bd_pins mult1/A]
  connect_bd_net -net aclk_0_1 [get_bd_ports clk] [get_bd_pins dds_compiler_0/aclk] [get_bd_pins mult0/CLK] [get_bd_pins mult1/CLK]
  connect_bd_net -net aresetn_0_1 [get_bd_ports rst] [get_bd_pins dds_compiler_0/aresetn]
  connect_bd_net -net dds_compiler_0_m_axis_data_tdata [get_bd_ports m_axis_data_tdata_0] [get_bd_pins cos/Din] [get_bd_pins dds_compiler_0/m_axis_data_tdata] [get_bd_pins sin/Din]
  connect_bd_net -net dds_compiler_0_m_axis_data_tvalid [get_bd_ports m_axis_data_tvalid_0] [get_bd_pins dds_compiler_0/m_axis_data_tvalid]
  connect_bd_net -net xbip_dsp48_macro_0_P [get_bd_ports TX_I] [get_bd_pins mult0/P]
  connect_bd_net -net xbip_dsp48_macro_1_P [get_bd_ports TX_Q] [get_bd_pins mult1/P]
  connect_bd_net -net xlslice_0_Dout [get_bd_ports coseno] [get_bd_pins cos/Dout] [get_bd_pins mult0/B]
  connect_bd_net -net xlslice_1_Dout [get_bd_ports seno] [get_bd_pins mult1/B] [get_bd_pins sin/Dout]

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


