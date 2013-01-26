///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.19)
//  \   \         Description : Xilinx Timing Formal Library Component
//  /   /                  Dynamically Adjustable Differential Input Delay Buffer
// /___/   /\     Filename : X_IBUFDS_DLY_ADJ.v
// \   \  /  \    Timestamp : Tues Nov 13 16:44:07 PST 2007
//  \___\/\___\
//
// Revision:
//    11/12/07 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_IBUFDS_DLY_ADJ (O, I, IB, S);

    output O;

    input I, IB;
    input [2:0] S;

    parameter DELAY_OFFSET = "OFF";
    parameter DIFF_TERM    = "FALSE";
    parameter IOSTANDARD   = "DEFAULT";    

    parameter SPECTRUM_OFFSET_DELAY = 1600;
    parameter SIM_TAPDELAY_VALUE = 200;
    parameter LOC = "UNPLACED";
endmodule // X_IBUFDS_DLY_ADJ

