// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/SIM_CONFIG_S6.v,v 1.4 2009/09/03 18:46:44 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2009 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 11.1i (L.11)
//  \   \         Description : Xilinx Formal Library Component
//  /   /
// /___/   /\     Filename : SIM_CONFIG_S6.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    04/28/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module SIM_CONFIG_S6 (
                   BUSY,
                   CSOB,
                   DONE,
                   CCLK,
                   D,
                   CSIB,
                   INITB,
                   M,
                   PROGB,
                   RDWRB
                   );

  output BUSY;
  output CSOB;
  inout  DONE;
  input  CCLK;
  input  CSIB;
  inout  [15:0] D;
  inout  INITB;
  input  [1:0] M;
  input  PROGB;
  input  RDWRB;

  parameter DEVICE_ID = 32'h0;
  parameter ICAP_SUPPORT = "FALSE";

endmodule
