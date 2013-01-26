///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i 
//  \   \         Description : Xilinx Timing Formal Library Component
//  /   /                  Input Dual Data-Rate Register with Dual Clock inputs
// /___/   /\     Filename : X_IDDR_2CLK.v
// \   \  /  \    Timestamp : Tues Nov 13 16:44:06 PST 2007
//  \___\/\___\
//
// Revision:
//    11/13/07 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_IDDR_2CLK (Q1, Q2, C, CB, CE, D, R, S);

    parameter DDR_CLK_EDGE = "OPPOSITE_EDGE";    
    parameter INIT_Q1 = 1'b0;
    parameter INIT_Q2 = 1'b0;
    parameter SRTYPE = "SYNC";
    parameter LOC = "UNPLACED";

    output Q1;
    output Q2;
    
    input C;
    input CB;
    input CE;
    input D;
    input R;
    input S;

endmodule // X_IDDR_2CLK
