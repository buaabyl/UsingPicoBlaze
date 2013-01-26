///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2005 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 9.1i (J.27)
//  \   \         Description : Xilinx Timing Formal Library Component
//  /   /                  D Flip-Flop with Asynchronous Clear and Preset and Clock Enable
// /___/   /\     Filename : X_FF_CPLD.v
// \   \  /  \    Timestamp : Tues Nov 13 16:43:55 PST 2007
//  \___\/\___\
//
// Revision:
//    11/13/07 - Initial version, Set has priority than RST.
// End Revision

`timescale 1 ps/1 ps
 
module X_FF_CPLD (O, CE, CLK, I, RST, SET);

  parameter INIT = 1'b0;
  parameter XON = "TRUE";
  parameter MSGON = "TRUE";
  parameter LOC = "UNPLACED";    
  output O;
  input CE, CLK, I, RST, SET;

endmodule

