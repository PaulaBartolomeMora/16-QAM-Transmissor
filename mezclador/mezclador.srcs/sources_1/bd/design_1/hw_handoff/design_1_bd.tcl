
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

  # Create ports
  set Salida_RRC_I [ create_bd_port -dir I -from 23 -to 0 -type data Salida_RRC_I ]
  set Salida_RRC_Q [ create_bd_port -dir I -from 23 -to 0 -type data Salida_RRC_Q ]
  set TX_I [ create_bd_port -dir O -from 31 -to 0 -type data TX_I ]
  set TX_Q [ create_bd_port -dir O -from 31 -to 0 -type data TX_Q ]
  set antena [ create_bd_port -dir O -from 32 -to 0 -type data antena ]
  set clk_52 [ create_bd_port -dir O -type clk clk_52 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {52363636} \
 ] $clk_52
  set clk_192 [ create_bd_port -dir O -type clk clk_192 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {192000000} \
 ] $clk_192
  set clk_576 [ create_bd_port -dir O -type clk clk_576 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {576000000} \
 ] $clk_576
  set coseno [ create_bd_port -dir O -from 7 -to 0 coseno ]
  set m_axis_data_tdata_0 [ create_bd_port -dir O -from 15 -to 0 m_axis_data_tdata_0 ]
  set m_axis_data_tvalid_0 [ create_bd_port -dir O m_axis_data_tvalid_0 ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set seno [ create_bd_port -dir O -from 7 -to 0 seno ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {277.77} \
   CONFIG.CLKOUT1_JITTER {129.300} \
   CONFIG.CLKOUT1_PHASE_ERROR {173.591} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {576.000} \
   CONFIG.CLKOUT2_JITTER {151.084} \
   CONFIG.CLKOUT2_PHASE_ERROR {173.591} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {192.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {193.692} \
   CONFIG.CLKOUT3_PHASE_ERROR {173.591} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {52.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {32.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {27.778} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {2.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {6} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {22} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIM_IN_FREQ {36} \
   CONFIG.USE_LOCKED {false} \
 ] $clk_wiz_0

  # Create instance: coseno, and set properties
  set coseno [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 coseno ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {8} \
 ] $coseno

  # Create instance: dds_compiler_0, and set properties
  set dds_compiler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dds_compiler:6.0 dds_compiler_0 ]
  set_property -dict [ list \
   CONFIG.Channels {1} \
   CONFIG.DATA_Has_TLAST {Not_Required} \
   CONFIG.DDS_Clock_Rate {576} \
   CONFIG.Frequency_Resolution {1} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_Phase_Out {false} \
   CONFIG.Has_TREADY {false} \
   CONFIG.Latency {5} \
   CONFIG.M_DATA_Has_TUSER {Not_Required} \
   CONFIG.M_PHASE_Has_TUSER {Not_Required} \
   CONFIG.Negative_Sine {true} \
   CONFIG.Noise_Shaping {Auto} \
   CONFIG.Output_Frequency1 {100} \
   CONFIG.Output_Frequency2 {0} \
   CONFIG.Output_Selection {Sine_and_Cosine} \
   CONFIG.Output_Width {8} \
   CONFIG.PINC1 {1011000111000111000111000111} \
   CONFIG.PINC2 {0} \
   CONFIG.POFF1 {0} \
   CONFIG.Parameter_Entry {System_Parameters} \
   CONFIG.PartsPresent {Phase_Generator_and_SIN_COS_LUT} \
   CONFIG.Phase_Increment {Fixed} \
   CONFIG.Phase_Offset_Angles1 {0} \
   CONFIG.Phase_Width {30} \
   CONFIG.Phase_offset {None} \
   CONFIG.S_PHASE_Has_TUSER {Not_Required} \
 ] $dds_compiler_0

  # Create instance: mult_gen_0, and set properties
  set mult_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 mult_gen_0 ]
  set_property -dict [ list \
   CONFIG.OutputWidthHigh {31} \
   CONFIG.PortAWidth {24} \
   CONFIG.PortBWidth {8} \
 ] $mult_gen_0

  # Create instance: mult_gen_1, and set properties
  set mult_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 mult_gen_1 ]
  set_property -dict [ list \
   CONFIG.OutputWidthHigh {31} \
   CONFIG.PortAWidth {24} \
   CONFIG.PortBWidth {8} \
 ] $mult_gen_1

  # Create instance: seno, and set properties
  set seno [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 seno ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {8} \
 ] $seno

  # Create instance: sim_clk_gen_0, and set properties
  set sim_clk_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 sim_clk_gen_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {36000000} \
   CONFIG.RESET_POLARITY {ACTIVE_HIGH} \
 ] $sim_clk_gen_0

  # Create instance: sumador, and set properties
  set sumador [ create_bd_cell -type ip -vlnv xilinx.com:ip:xbip_dsp48_macro:3.0 sumador ]
  set_property -dict [ list \
   CONFIG.areg_1 {false} \
   CONFIG.areg_2 {false} \
   CONFIG.areg_3 {false} \
   CONFIG.areg_4 {false} \
   CONFIG.breg_3 {false} \
   CONFIG.breg_4 {false} \
   CONFIG.c_width {32} \
   CONFIG.concat_width {32} \
   CONFIG.concatreg_3 {true} \
   CONFIG.concatreg_4 {true} \
   CONFIG.concatreg_5 {true} \
   CONFIG.creg_1 {false} \
   CONFIG.creg_2 {false} \
   CONFIG.creg_3 {true} \
   CONFIG.creg_4 {true} \
   CONFIG.creg_5 {true} \
   CONFIG.instruction1 {C+CONCAT} \
   CONFIG.mreg_5 {false} \
   CONFIG.p_binarywidth {0} \
   CONFIG.p_full_width {33} \
   CONFIG.p_width {33} \
   CONFIG.preg_6 {true} \
 ] $sumador

  # Create port connections
  connect_bd_net -net A_0_1 [get_bd_ports Salida_RRC_I] [get_bd_pins mult_gen_0/A]
  connect_bd_net -net A_0_2 [get_bd_ports Salida_RRC_Q] [get_bd_pins mult_gen_1/A]
  connect_bd_net -net aresetn_0_1 [get_bd_ports rst] [get_bd_pins dds_compiler_0/aresetn]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_ports clk_576] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins dds_compiler_0/aclk] [get_bd_pins mult_gen_0/CLK] [get_bd_pins mult_gen_1/CLK] [get_bd_pins sumador/CLK]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_ports clk_192] [get_bd_pins clk_wiz_0/clk_out2]
  connect_bd_net -net clk_wiz_0_clk_out3 [get_bd_ports clk_52] [get_bd_pins clk_wiz_0/clk_out3]
  connect_bd_net -net coseno_Dout [get_bd_ports coseno] [get_bd_pins coseno/Dout] [get_bd_pins mult_gen_0/B]
  connect_bd_net -net dds_compiler_0_m_axis_data_tdata [get_bd_ports m_axis_data_tdata_0] [get_bd_pins coseno/Din] [get_bd_pins dds_compiler_0/m_axis_data_tdata] [get_bd_pins seno/Din]
  connect_bd_net -net dds_compiler_0_m_axis_data_tvalid [get_bd_ports m_axis_data_tvalid_0] [get_bd_pins dds_compiler_0/m_axis_data_tvalid]
  connect_bd_net -net seno_Dout [get_bd_ports seno] [get_bd_pins mult_gen_1/B] [get_bd_pins seno/Dout]
  connect_bd_net -net sim_clk_gen_0_clk [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins sim_clk_gen_0/clk]
  connect_bd_net -net sim_clk_gen_0_sync_rst [get_bd_pins clk_wiz_0/reset] [get_bd_pins sim_clk_gen_0/sync_rst]
  connect_bd_net -net sumador_P [get_bd_ports antena] [get_bd_pins sumador/P]
  connect_bd_net -net xbip_dsp48_macro_0_P [get_bd_ports TX_I] [get_bd_pins mult_gen_0/P] [get_bd_pins sumador/C]
  connect_bd_net -net xbip_dsp48_macro_1_P [get_bd_ports TX_Q] [get_bd_pins mult_gen_1/P] [get_bd_pins sumador/CONCAT]

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


