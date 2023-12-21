
################################################################
# This is a generated script based on design: qam16
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
# source qam16_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# mapeado_16QAM_I, mapeado_16QAM_Q

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k70tfbg484-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name qam16

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
  set ce [ create_bd_port -dir I ce ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {192000000} \
 ] $clk
  set entrada [ create_bd_port -dir I -from 11 -to 0 entrada ]
  set m_axis_data_tdata_0 [ create_bd_port -dir O -from 23 -to 0 m_axis_data_tdata_0 ]
  set m_axis_data_tdata_1 [ create_bd_port -dir O -from 23 -to 0 m_axis_data_tdata_1 ]
  set m_axis_data_tvalid_0 [ create_bd_port -dir O m_axis_data_tvalid_0 ]
  set m_axis_data_tvalid_1 [ create_bd_port -dir O m_axis_data_tvalid_1 ]
  set rst_0 [ create_bd_port -dir I -type rst rst_0 ]
  set s_axis_data_tready_0 [ create_bd_port -dir O s_axis_data_tready_0 ]
  set s_axis_data_tready_1 [ create_bd_port -dir O s_axis_data_tready_1 ]
  set s_axis_data_tvalid_0 [ create_bd_port -dir I s_axis_data_tvalid_0 ]
  set s_axis_data_tvalid_1 [ create_bd_port -dir I s_axis_data_tvalid_1 ]
  set salida_I [ create_bd_port -dir O -from 7 -to 0 salida_I ]
  set salida_Q [ create_bd_port -dir O -from 7 -to 0 salida_Q ]

  # Create instance: fir_compiler_I, and set properties
  set fir_compiler_I [ create_bd_cell -type ip -vlnv xilinx.com:ip:fir_compiler:7.2 fir_compiler_I ]
  set_property -dict [ list \
   CONFIG.BestPrecision {true} \
   CONFIG.Clock_Frequency {192} \
   CONFIG.CoefficientSource {Vector} \
   CONFIG.CoefficientVector {-0.00663867853767272,-0.00602169653714084,-0.00529347118529176,-0.00445824548864446,-0.0035218321918853,-0.00249160301669963,-0.00137645802195132,-0.000186774814536972,0.00106566242199441,0.00236775386984364,0.00370519453152383,0.00506260348947667,0.00642367101778738,0.00777132235261769,0.0090878966959861,0.0103553398069446,0.0115554083279177,0.012669883804758,0.0136807941895475,0.0145706404677674,0.0153226259283814,0.0159208854985838,0.0163507124961381,0.0165987801127473,0.0166533549328094,0.0165044998139274,0.0161442635090165,0.0155668544947696,0.014768796587225,0.013749064071461,0.0125091942479061,0.011053375500908,0.00938850922421195,0.00752424419069521,0.00547298222760699,0.00324985435090727,0.0008726668200585,-0.00163818310544666,-0.00425982159788389,-0.00696704243769444,-0.00973248015553795,-0.0125268110281898,-0.0153189804897603,-0.0180764552029428,-0.0207654977318963,-0.0233514614725648,-0.0257991032311911,-0.0280729106007981,-0.0301374410715249,-0.0319576696267094,-0.0334993414249872,-0.0347293260515622,-0.0356159697409923,-0.0361294419306986,-0.0362420724999499,-0.0359286760838307,-0.0351668599258157,-0.0339373118457097,-0.0322240650511184,-0.0300147367090889,-0.0273007374184814,-0.0240774489809469,-0.0203443681566915,-0.0161052144076532,-0.0113679999722271,-0.00614506097870744,-0.000453048685568026,0.00568711966851974,0.0122503505174283,0.0192075038255421,0.0265255624422642,0.0341678398365667,0.0420942246950265,0.0502614604788459,0.0586234576638146,0.0671316360361168,0.0757352940902648,0.0843820022769118,0.093018016581241,0.101588708680126,0.110039008730984,0.118313856689522,0.126358657939291,0.134119738944527,0.141544798610179,0.148583351049813,0.155187155523179,0.161310629410294,0.166911240236868,0.171949872955418,0.17639116891563,0.180203833224029,0.18336090749422,0.185840005321611,0.18762350817729,0.188698719800761,0.189057977576521,0.188698719800761,0.18762350817729,0.185840005321611,0.18336090749422,0.180203833224029,0.17639116891563,0.171949872955418,0.166911240236868,0.161310629410294,0.155187155523179,0.148583351049813,0.141544798610179,0.134119738944527,0.126358657939291,0.118313856689522,0.110039008730984,0.101588708680126,0.093018016581241,0.0843820022769118,0.0757352940902648,0.0671316360361168,0.0586234576638146,0.0502614604788459,0.0420942246950265,0.0341678398365667,0.0265255624422642,0.0192075038255421,0.0122503505174283,0.00568711966851974,-0.000453048685568026,-0.00614506097870744,-0.0113679999722271,-0.0161052144076532,-0.0203443681566915,-0.0240774489809469,-0.0273007374184814,-0.0300147367090889,-0.0322240650511184,-0.0339373118457097,-0.0351668599258157,-0.0359286760838307,-0.0362420724999499,-0.0361294419306986,-0.0356159697409923,-0.0347293260515622,-0.0334993414249872,-0.0319576696267094,-0.0301374410715249,-0.0280729106007981,-0.0257991032311911,-0.0233514614725648,-0.0207654977318963,-0.0180764552029428,-0.0153189804897603,-0.0125268110281898,-0.00973248015553795,-0.00696704243769444,-0.00425982159788389,-0.00163818310544666,0.0008726668200585,0.00324985435090727,0.00547298222760699,0.00752424419069521,0.00938850922421195,0.011053375500908,0.0125091942479061,0.013749064071461,0.014768796587225,0.0155668544947696,0.0161442635090165,0.0165044998139274,0.0166533549328094,0.0165987801127473,0.0163507124961381,0.0159208854985838,0.0153226259283814,0.0145706404677674,0.0136807941895475,0.012669883804758,0.0115554083279177,0.0103553398069446,0.0090878966959861,0.00777132235261769,0.00642367101778738,0.00506260348947667,0.00370519453152383,0.00236775386984364,0.00106566242199441,-0.000186774814536972,-0.00137645802195132,-0.00249160301669963,-0.0035218321918853,-0.00445824548864446,-0.00529347118529176,-0.00602169653714084,-0.00663867853767272} \
   CONFIG.Coefficient_Fractional_Bits {17} \
   CONFIG.Coefficient_Sets {1} \
   CONFIG.Coefficient_Sign {Signed} \
   CONFIG.Coefficient_Structure {Symmetric} \
   CONFIG.Coefficient_Width {16} \
   CONFIG.Data_Fractional_Bits {0} \
   CONFIG.Data_Width {8} \
   CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate} \
   CONFIG.Output_Rounding_Mode {Truncate_LSBs} \
   CONFIG.Output_Width {24} \
   CONFIG.Quantization {Quantize_Only} \
 ] $fir_compiler_I

  # Create instance: fir_compiler_Q, and set properties
  set fir_compiler_Q [ create_bd_cell -type ip -vlnv xilinx.com:ip:fir_compiler:7.2 fir_compiler_Q ]
  set_property -dict [ list \
   CONFIG.Clock_Frequency {192} \
   CONFIG.CoefficientVector {-0.00663867853767272,-0.00602169653714084,-0.00529347118529176,-0.00445824548864446,-0.0035218321918853,-0.00249160301669963,-0.00137645802195132,-0.000186774814536972,0.00106566242199441,0.00236775386984364,0.00370519453152383,0.00506260348947667,0.00642367101778738,0.00777132235261769,0.0090878966959861,0.0103553398069446,0.0115554083279177,0.012669883804758,0.0136807941895475,0.0145706404677674,0.0153226259283814,0.0159208854985838,0.0163507124961381,0.0165987801127473,0.0166533549328094,0.0165044998139274,0.0161442635090165,0.0155668544947696,0.014768796587225,0.013749064071461,0.0125091942479061,0.011053375500908,0.00938850922421195,0.00752424419069521,0.00547298222760699,0.00324985435090727,0.0008726668200585,-0.00163818310544666,-0.00425982159788389,-0.00696704243769444,-0.00973248015553795,-0.0125268110281898,-0.0153189804897603,-0.0180764552029428,-0.0207654977318963,-0.0233514614725648,-0.0257991032311911,-0.0280729106007981,-0.0301374410715249,-0.0319576696267094,-0.0334993414249872,-0.0347293260515622,-0.0356159697409923,-0.0361294419306986,-0.0362420724999499,-0.0359286760838307,-0.0351668599258157,-0.0339373118457097,-0.0322240650511184,-0.0300147367090889,-0.0273007374184814,-0.0240774489809469,-0.0203443681566915,-0.0161052144076532,-0.0113679999722271,-0.00614506097870744,-0.000453048685568026,0.00568711966851974,0.0122503505174283,0.0192075038255421,0.0265255624422642,0.0341678398365667,0.0420942246950265,0.0502614604788459,0.0586234576638146,0.0671316360361168,0.0757352940902648,0.0843820022769118,0.093018016581241,0.101588708680126,0.110039008730984,0.118313856689522,0.126358657939291,0.134119738944527,0.141544798610179,0.148583351049813,0.155187155523179,0.161310629410294,0.166911240236868,0.171949872955418,0.17639116891563,0.180203833224029,0.18336090749422,0.185840005321611,0.18762350817729,0.188698719800761,0.189057977576521,0.188698719800761,0.18762350817729,0.185840005321611,0.18336090749422,0.180203833224029,0.17639116891563,0.171949872955418,0.166911240236868,0.161310629410294,0.155187155523179,0.148583351049813,0.141544798610179,0.134119738944527,0.126358657939291,0.118313856689522,0.110039008730984,0.101588708680126,0.093018016581241,0.0843820022769118,0.0757352940902648,0.0671316360361168,0.0586234576638146,0.0502614604788459,0.0420942246950265,0.0341678398365667,0.0265255624422642,0.0192075038255421,0.0122503505174283,0.00568711966851974,-0.000453048685568026,-0.00614506097870744,-0.0113679999722271,-0.0161052144076532,-0.0203443681566915,-0.0240774489809469,-0.0273007374184814,-0.0300147367090889,-0.0322240650511184,-0.0339373118457097,-0.0351668599258157,-0.0359286760838307,-0.0362420724999499,-0.0361294419306986,-0.0356159697409923,-0.0347293260515622,-0.0334993414249872,-0.0319576696267094,-0.0301374410715249,-0.0280729106007981,-0.0257991032311911,-0.0233514614725648,-0.0207654977318963,-0.0180764552029428,-0.0153189804897603,-0.0125268110281898,-0.00973248015553795,-0.00696704243769444,-0.00425982159788389,-0.00163818310544666,0.0008726668200585,0.00324985435090727,0.00547298222760699,0.00752424419069521,0.00938850922421195,0.011053375500908,0.0125091942479061,0.013749064071461,0.014768796587225,0.0155668544947696,0.0161442635090165,0.0165044998139274,0.0166533549328094,0.0165987801127473,0.0163507124961381,0.0159208854985838,0.0153226259283814,0.0145706404677674,0.0136807941895475,0.012669883804758,0.0115554083279177,0.0103553398069446,0.0090878966959861,0.00777132235261769,0.00642367101778738,0.00506260348947667,0.00370519453152383,0.00236775386984364,0.00106566242199441,-0.000186774814536972,-0.00137645802195132,-0.00249160301669963,-0.0035218321918853,-0.00445824548864446,-0.00529347118529176,-0.00602169653714084,-0.00663867853767272} \
   CONFIG.Coefficient_Fractional_Bits {17} \
   CONFIG.Coefficient_Sets {1} \
   CONFIG.Coefficient_Sign {Signed} \
   CONFIG.Coefficient_Structure {Symmetric} \
   CONFIG.Coefficient_Width {16} \
   CONFIG.Data_Fractional_Bits {0} \
   CONFIG.Data_Width {8} \
   CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate} \
   CONFIG.Output_Rounding_Mode {Truncate_LSBs} \
   CONFIG.Output_Width {23} \
   CONFIG.Quantization {Quantize_Only} \
 ] $fir_compiler_Q

  # Create instance: mapeado_16QAM_I_0, and set properties
  set block_name mapeado_16QAM_I
  set block_cell_name mapeado_16QAM_I_0
  if { [catch {set mapeado_16QAM_I_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mapeado_16QAM_I_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mapeado_16QAM_Q_0, and set properties
  set block_name mapeado_16QAM_Q
  set block_cell_name mapeado_16QAM_Q_0
  if { [catch {set mapeado_16QAM_Q_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mapeado_16QAM_Q_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net ce_1 [get_bd_ports ce] [get_bd_pins mapeado_16QAM_I_0/ce] [get_bd_pins mapeado_16QAM_Q_0/ce]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins fir_compiler_I/aclk] [get_bd_pins fir_compiler_Q/aclk] [get_bd_pins mapeado_16QAM_I_0/clk] [get_bd_pins mapeado_16QAM_Q_0/clk]
  connect_bd_net -net entrada_1_1 [get_bd_ports entrada] [get_bd_pins mapeado_16QAM_I_0/entrada] [get_bd_pins mapeado_16QAM_Q_0/entrada]
  connect_bd_net -net fir_compiler_I_m_axis_data_tdata [get_bd_ports m_axis_data_tdata_0] [get_bd_pins fir_compiler_I/m_axis_data_tdata]
  connect_bd_net -net fir_compiler_I_m_axis_data_tvalid [get_bd_ports m_axis_data_tvalid_0] [get_bd_pins fir_compiler_I/m_axis_data_tvalid]
  connect_bd_net -net fir_compiler_I_s_axis_data_tready [get_bd_ports s_axis_data_tready_0] [get_bd_pins fir_compiler_I/s_axis_data_tready]
  connect_bd_net -net fir_compiler_Q_m_axis_data_tdata [get_bd_ports m_axis_data_tdata_1] [get_bd_pins fir_compiler_Q/m_axis_data_tdata]
  connect_bd_net -net fir_compiler_Q_m_axis_data_tvalid [get_bd_ports m_axis_data_tvalid_1] [get_bd_pins fir_compiler_Q/m_axis_data_tvalid]
  connect_bd_net -net fir_compiler_Q_s_axis_data_tready [get_bd_ports s_axis_data_tready_1] [get_bd_pins fir_compiler_Q/s_axis_data_tready]
  connect_bd_net -net mapeado_16QAM_I_0_salida [get_bd_ports salida_I] [get_bd_pins fir_compiler_I/s_axis_data_tdata] [get_bd_pins mapeado_16QAM_I_0/salida]
  connect_bd_net -net mapeado_16QAM_Q_0_salida [get_bd_ports salida_Q] [get_bd_pins fir_compiler_Q/s_axis_data_tdata] [get_bd_pins mapeado_16QAM_Q_0/salida]
  connect_bd_net -net rst_0_1 [get_bd_ports rst_0] [get_bd_pins mapeado_16QAM_I_0/rst] [get_bd_pins mapeado_16QAM_Q_0/rst]
  connect_bd_net -net s_axis_data_tvalid_0_1 [get_bd_ports s_axis_data_tvalid_0] [get_bd_pins fir_compiler_Q/s_axis_data_tvalid]
  connect_bd_net -net s_axis_data_tvalid_1_1 [get_bd_ports s_axis_data_tvalid_1] [get_bd_pins fir_compiler_I/s_axis_data_tvalid]

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


