// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_CRC64.v,v 1.3 2008/10/02 19:01:53 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.2i
//  \   \         Description : Xilinx Formal Verification Library Component
//  /   /                  Cyclic Redundancy Check 64-bit Input Simulation Model
// /___/   /\     Filename : X_CRC64.v
// \   \  /  \    Timestamp : Thu Jun  8 15:42:06 PDT 2006
//  \___\/\___\
//
// Revision:
//    06/08/06 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_CRC64 (
        CRCOUT,
        CRCCLK,
        CRCDATAVALID,
        CRCDATAWIDTH,
        CRCIN,
        CRCRESET
        );
   
   parameter CRC_INIT = 32'hFFFFFFFF;
   parameter LOC = "UNPLACED";
   
   output [31:0] CRCOUT;
   
   input      CRCCLK;
   input      CRCDATAVALID;
   input [2:0]      CRCDATAWIDTH;
   input [63:0]  CRCIN;
   input      CRCRESET;

endmodule // X_CRC64




