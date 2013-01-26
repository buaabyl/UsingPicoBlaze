// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_SIM_CONFIG_V6.v,v 1.2 2009/09/02 19:45:19 vandanad Exp $
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
// /___/   /\     Filename : X_SIM_CONFIG_V6.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    09/01/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_SIM_CONFIG_V6 ( BUSY,
                   CSOB,
                   DONE,
                   CCLK,
                   CSB,
                   D,
                   INITB,
                   M,
                   PROGB,
                   RDWRB
                   );
 
  output BUSY;
  output CSOB;
  inout DONE;
  input  CCLK;
  input  CSB;
  inout  [31:0] D; 
  inout  INITB;
  input  [2:0] M;
  input  PROGB;
  input  RDWRB;

  parameter DEVICE_ID = 32'h0;
  parameter ICAP_SUPPORT = "FALSE";
  parameter ICAP_WIDTH = "X8";
  parameter LOC = "UNPLACED";

  endmodule
