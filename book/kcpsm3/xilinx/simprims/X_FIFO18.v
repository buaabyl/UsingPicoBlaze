// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_FIFO18.v,v 1.3 2008/10/02 19:01:53 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.2i
//  \   \         Description : Xilinx Formal Verification Library Component
//  /   /                  18K-Bit FIFO
// /___/   /\     Filename : X_FIFO18.v
// \   \  /  \    Timestamp : Thu Jun  8 15:42:06 PDT 2006
//  \___\/\___\
//
// Revision:
//    06/08/06 - Initial version.
// End Revision

`timescale 1 ps/1 ps

module X_FIFO18 (ALMOSTEMPTY, ALMOSTFULL, DO, DOP, EMPTY, FULL, RDCOUNT, RDERR, WRCOUNT, WRERR,
         DI, DIP, RDCLK, RDEN, RST, WRCLK, WREN);

    parameter ALMOST_EMPTY_OFFSET = 12'h080;
    parameter ALMOST_FULL_OFFSET = 12'h080;
    parameter DATA_WIDTH = 4;
    parameter DO_REG = 1;
    parameter EN_SYN = "FALSE";
    parameter FIRST_WORD_FALL_THROUGH = "FALSE";
    parameter LOC = "UNPLACED";
    output ALMOSTEMPTY;
    output ALMOSTFULL;
    output [15:0] DO;
    output [1:0] DOP;
    output EMPTY;
    output FULL;
    output [11:0] RDCOUNT;
    output RDERR;
    output [11:0] WRCOUNT;
    output WRERR;
    input [15:0] DI;
    input [1:0] DIP;
    input RDCLK;
    input RDEN;
    input RST;
    input WRCLK;
    input WREN;

endmodule // X_FIFO18
