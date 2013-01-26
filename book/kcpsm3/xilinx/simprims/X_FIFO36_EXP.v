// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_FIFO36_EXP.v,v 1.3 2008/10/02 19:01:53 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.2i
//  \   \         Description : Xilinx Formal Verification Library Component
//  /   /                  36K-Bit FIFO
// /___/   /\     Filename : X_FIFO36_EXP.v
// \   \  /  \    Timestamp : Thu Jun  8 15:42:06 PDT 2006
//  \___\/\___\
//
// Revision:
//    06/08/06 - Initial version.
// End Revision

`timescale 1 ps/1 ps

module X_FIFO36_EXP (ALMOSTEMPTY, ALMOSTFULL, DO, DOP, EMPTY, FULL, RDCOUNT, RDERR, WRCOUNT, WRERR,
             DI, DIP, RDCLKL, RDCLKU, RDEN, RDRCLKL, RDRCLKU, RST, WRCLKL, WRCLKU, WREN);

    output ALMOSTEMPTY;
    output ALMOSTFULL;
    output [31:0] DO;
    output [3:0] DOP;
    output EMPTY;
    output FULL;
    output [12:0] RDCOUNT;
    output RDERR;
    output [12:0] WRCOUNT;
    output WRERR;
    input [31:0] DI;
    input [3:0] DIP;
    input RDCLKL;
    input RDCLKU;
    input RDEN;
    input RDRCLKL;
    input RDRCLKU;
    input RST;
    input WRCLKL;
    input WRCLKU;
    input WREN;
    parameter ALMOST_EMPTY_OFFSET = 13'h0080;
    parameter ALMOST_FULL_OFFSET = 13'h0080;
    parameter DATA_WIDTH = 4;
    parameter DO_REG = 1;
    parameter EN_SYN = "FALSE";
    parameter FIRST_WORD_FALL_THROUGH = "FALSE";
    parameter LOC = "UNPLACED";

endmodule // X_FIFO36_EXP
