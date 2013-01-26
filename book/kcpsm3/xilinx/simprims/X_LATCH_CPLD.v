///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 9.1i (J.27)
//  \   \         Description : Xilinx Timing Formal Library Component
//  /   /                  Transparent Data Latch
// /___/   /\     Filename : X_LATCH_CPLD.v
// \   \  /  \    Timestamp : Tues Nov 13 16:43:55 PST 2007
//  \___\/\___\
//
// Revision:
//    11/13/07 - Initial version, SET has priority than RST.
// End Revision

`timescale 1 ps/1 ps
 
module X_LATCH_CPLD (O, CLK, I, RST, SET);

  parameter INIT = 1'b0;
  parameter XON = "TRUE";
  parameter MSGON = "TRUE";
  parameter LOC = "UNPLACED";

  output O;
  input CLK, I, RST, SET;

endmodule

