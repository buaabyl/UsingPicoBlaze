///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1i (K.18)
//  \   \         Description : Xilinx Timing Formal Library Component
//  /   /                  6-input Look-Up-Table with Two Outputs
// /___/   /\     Filename : X_LUT6_2.v
// \   \  /  \    Timestamp : 
//  \___\/\___\
//
// Revision:
//    11/13/07 - Initial version.
// End Revision

`timescale  1 ps / 1 ps


module X_LUT6_2 (O5, O6, I0, I1, I2, I3, I4, I5);

  parameter INIT = 64'h0000000000000000;
  parameter LOC = "UNPLACED";
  input I0, I1, I2, I3, I4, I5;

  output O5, O6;

endmodule
