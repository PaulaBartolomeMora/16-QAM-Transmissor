
//------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "fir_compiler_0" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -870,-789,-694,-584,-462,-327,-180,-24,140,310,486,664,842,1019,1191,1357,1515,1661,1793,1910,2008,2087,2143,2176,2183,2163,2116,2040,1936,1802,1640,1449,1231,986,717,426,114,-215,-558,-913,-1276,-1642,-2008,-2369,-2722,-3061,-3382,-3680,-3950,-4189,-4391,-4552,-4668,-4736,-4750,-4709,-4609,-4448,-4224,-3934,-3578,-3156,-2667,-2111,-1490,-805,-59,745,1606,2518,3477,4478,5517,6588,7684,8799,9927,11060,12192,13315,14423,15508,16562,17579,18553,19475,20341,21143,21877,22538,23120,23620,24033,24358,24592,24733,24780,24733,24592,24358,24033,23620,23120,22538,21877,21143,20341,19475,18553,17579,16562,15508,14423,13315,12192,11060,9927,8799,7684,6588,5517,4478,3477,2518,1606,745,-59,-805,-1490,-2111,-2667,-3156,-3578,-3934,-4224,-4448,-4609,-4709,-4750,-4736,-4668,-4552,-4391,-4189,-3950,-3680,-3382,-3061,-2722,-2369,-2008,-1642,-1276,-913,-558,-215,114,426,717,986,1231,1449,1640,1802,1936,2040,2116,2163,2183,2176,2143,2087,2008,1910,1793,1661,1515,1357,1191,1019,842,664,486,310,140,-24,-180,-327,-462,-584,-694,-789,-870
// chanpats: 173
// name: fir_compiler_0
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 193
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 16
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 3
// data_fract_width: 0
// output_rounding_mode: 0
// output_width: 24
// output_fract_width: 0
// config_method: 0

const double fir_compiler_0_coefficients[193] = {-870,-789,-694,-584,-462,-327,-180,-24,140,310,486,664,842,1019,1191,1357,1515,1661,1793,1910,2008,2087,2143,2176,2183,2163,2116,2040,1936,1802,1640,1449,1231,986,717,426,114,-215,-558,-913,-1276,-1642,-2008,-2369,-2722,-3061,-3382,-3680,-3950,-4189,-4391,-4552,-4668,-4736,-4750,-4709,-4609,-4448,-4224,-3934,-3578,-3156,-2667,-2111,-1490,-805,-59,745,1606,2518,3477,4478,5517,6588,7684,8799,9927,11060,12192,13315,14423,15508,16562,17579,18553,19475,20341,21143,21877,22538,23120,23620,24033,24358,24592,24733,24780,24733,24592,24358,24033,23620,23120,22538,21877,21143,20341,19475,18553,17579,16562,15508,14423,13315,12192,11060,9927,8799,7684,6588,5517,4478,3477,2518,1606,745,-59,-805,-1490,-2111,-2667,-3156,-3578,-3934,-4224,-4448,-4609,-4709,-4750,-4736,-4668,-4552,-4391,-4189,-3950,-3680,-3382,-3061,-2722,-2369,-2008,-1642,-1276,-913,-558,-215,114,426,717,986,1231,1449,1640,1802,1936,2040,2116,2163,2183,2176,2143,2087,2008,1910,1793,1661,1515,1357,1191,1019,842,664,486,310,140,-24,-180,-327,-462,-584,-694,-789,-870};

const xip_fir_v7_2_pattern fir_compiler_0_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_compiler_0_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_compiler_0";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_compiler_0_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 193;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_compiler_0_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 3;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 24;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_compiler_0_config = gen_fir_compiler_0_config();

