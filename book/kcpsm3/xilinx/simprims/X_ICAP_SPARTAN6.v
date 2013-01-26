// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_ICAP_SPARTAN6.v,v 1.3 2009/08/22 00:32:34 harikr Exp $
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
// /___/   /\     Filename : X_ICAP_SPARTAN6.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    04/28/09 - Initial version.
// End Revision

`timescale 1 ps / 1 ps 

module X_ICAP_SPARTAN6 (
  BUSY,
  O,
  CE,
  CLK,
  I,
  WRITE
);
  parameter DEVICE_ID = 32'h02000093;
  parameter LOC = "UNPLACED";
  parameter SIM_CFG_FILE_NAME = "NONE";

  output BUSY;
  output [15:0] O;

  input CLK;
  input CE;
  input WRITE;
  input [15:0] I;

endmodule
