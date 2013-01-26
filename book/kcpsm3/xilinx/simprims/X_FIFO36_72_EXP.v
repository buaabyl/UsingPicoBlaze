// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_FIFO36_72_EXP.v,v 1.3 2008/10/02 19:01:53 vandanad Exp $
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
// /___/   /\     Filename : X_FIFO36_72_EXP.v
// \   \  /  \    Timestamp : Thu Jun  8 15:42:06 PDT 2006
//  \___\/\___\
//
// Revision:
//    06/08/06 - Initial version.
// End Revision

`timescale 1 ps/1 ps

module X_FIFO36_72_EXP (ALMOSTEMPTY, ALMOSTFULL, DBITERR, DO, DOP, ECCPARITY, EMPTY, FULL, RDCOUNT, RDERR, SBITERR, WRCOUNT, WRERR,
              DI, DIP, RDCLKL, RDCLKU, RDEN, RDRCLKL, RDRCLKU, RST, WRCLKL, WRCLKU, WREN);

    parameter ALMOST_EMPTY_OFFSET = 13'h0080;
    parameter ALMOST_FULL_OFFSET = 13'h0080;
    parameter DO_REG = 1;
    parameter EN_ECC_WRITE = "FALSE";
    parameter EN_ECC_READ = "FALSE";
    parameter EN_SYN = "FALSE";
    parameter FIRST_WORD_FALL_THROUGH = "FALSE";
    parameter LOC = "UNPLACED";
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
    input RDCLKL;
    input RDCLKU;
    input RDEN;
    input RDRCLKL;
    input RDRCLKU;
    input RST;
    input WRCLKL;
    input WRCLKU;
    input WREN;

endmodule // X_FIFO36_72_EXP
