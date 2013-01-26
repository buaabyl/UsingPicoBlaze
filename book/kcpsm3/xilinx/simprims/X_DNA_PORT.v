///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i
//  \   \         Description : Xilinx Functional Formal Library Component
//  /   /                       Device DNA Data Access Port
// /___/   /\     Filename : X_DNA_PORT.v
// \   \  /  \    Timestamp : Tues Nov 13 14:55:34 PDT 2007
//  \___\/\___\
//
// Revision:
//    11/13/07 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_DNA_PORT (DOUT, CLK, DIN, READ, SHIFT);

    parameter SIM_DNA_VALUE = 57'h0;
    parameter LOC = "UNPLACED";

    output DOUT;

    input  CLK, DIN, READ, SHIFT;
    

endmodule // X_DNA_PORT
