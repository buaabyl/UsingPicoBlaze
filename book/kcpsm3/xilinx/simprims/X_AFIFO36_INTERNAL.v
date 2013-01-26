///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2005 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : This is not an user primitive.
//  /   /                  Xilinx Timing Simulation Library Component 36K-Bit FIFO.
// /___/   /\     Filename : X_AFIFO36_INTERNAL.v
// \   \  /  \    Timestamp : Tues Nov 13 16:44:06 PST 2007
//  \___\/\___\
//
// Revision:
//    11/13/07 - Initial version.
// End Revision

`timescale 1 ps/1 ps

module X_AFIFO36_INTERNAL (ALMOSTEMPTY, ALMOSTFULL, DBITERR, DO, DOP, ECCPARITY, EMPTY, FULL, RDCOUNT, RDERR, SBITERR, WRCOUNT, WRERR,
            DI, DIP, RDCLK, RDEN, RDRCLK, RST, WRCLK, WREN);
 
    output ALMOSTEMPTY;
    output ALMOSTFULL;
    output DBITERR;
    output [63:0] DO;
    output [7:0] DOP;
    output [7:0] ECCPARITY;
    output EMPTY;
    output FULL;
    output [12:0] RDCOUNT;
    output RDERR;
    output SBITERR;
    output [12:0] WRCOUNT;
    output WRERR;

    input [63:0] DI;
    input [7:0] DIP;
    input RDCLK;
    input RDEN;
    input RDRCLK;
    input RST;
    input WRCLK;
    input WREN;

    
    parameter DATA_WIDTH = 4;
    parameter DO_REG = 1;
    parameter EN_SYN = "FALSE";
    parameter FIRST_WORD_FALL_THROUGH = "FALSE";
    parameter ALMOST_EMPTY_OFFSET = 13'h0080;
    parameter ALMOST_FULL_OFFSET = 13'h0080;
    parameter EN_ECC_WRITE = "FALSE";
    parameter EN_ECC_READ = "FALSE";

endmodule
