// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_ISERDES_NODELAY.v,v 1.4 2008/10/02 19:01:54 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.2i
//  \   \         Description : Xilinx Formal Verification Library Component
//  /   /                  Source Synchronous Input Deserializer without delay element
// /___/   /\     Filename : X_ISERDES_NODELAY.v
// \   \  /  \    Timestamp : Thu Jun  8 15:42:06 PDT 2006
//  \___\/\___\
//
// Revision:
//    06/08/06 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_ISERDES_NODELAY (O, Q1, Q2, Q3, Q4, Q5, Q6, SHIFTOUT1, SHIFTOUT2,
          BITSLIP, CE1, CE2, CLK, CLKB, CLKDIV, D, DDLY, OCLK, OFB, RST, SHIFTIN1, SHIFTIN2);

    parameter BITSLIP_ENABLE = "FALSE";
    parameter DATA_RATE = "DDR";
    parameter DATA_WIDTH = 4;
    parameter INIT_Q1 = 1'b0;
    parameter INIT_Q2 = 1'b0;
    parameter INIT_Q3 = 1'b0;
    parameter INIT_Q4 = 1'b0;
    parameter INTERFACE_TYPE = "MEMORY";
// begin_simprim_only
    parameter IOBDELAY = "NONE";
// end_simprim_only
// begin_simprim_only
// end_simprim_only
    parameter NUM_CE = 2;
// begin_simprim_only
    parameter OFB_USED = "FALSE";
// end_simprim_only
    parameter SERDES_MODE = "MASTER";
    parameter LOC = "UNPLACED";

// begin_simprim_only
    output O;
// end_simprim_only
    output Q1;
    output Q2;
    output Q3;
    output Q4;
    output Q5;
    output Q6;
    output SHIFTOUT1;
    output SHIFTOUT2;

    input BITSLIP;
    input CE1;
    input CE2;
    input CLK;
    input CLKB;
    input CLKDIV;
    input D;
// begin_simprim_only
    input DDLY;
// end_simprim_only
    input OCLK;
// begin_simprim_only
    input OFB;
// end_simprim_only
    input RST;
    input SHIFTIN1;
    input SHIFTIN2;
    
endmodule // X_ISERDES_NODELAY
