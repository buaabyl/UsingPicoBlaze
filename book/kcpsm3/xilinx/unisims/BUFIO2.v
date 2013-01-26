// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/BUFIO2.v,v 1.3 2009/08/22 00:32:34 harikr Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2009 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 11.1i (L.11)
//  \   \         Description : Xilinx Formal Library Component
//  /   /               
// /___/   /\     Filename : BUFIO2.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    04/28/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module BUFIO2 (DIVCLK, IOCLK, SERDESSTROBE, I);



  parameter DIVIDE_BYPASS = "TRUE";    // TRUE, FALSE
  parameter integer DIVIDE = 1;        // {1..8}
  parameter I_INVERT = "FALSE";        // TRUE, FALSE
  parameter USE_DOUBLER = "FALSE";     // TRUE, FALSE


    output DIVCLK; 
    output IOCLK; 
    output SERDESSTROBE; 

    input I; 

endmodule // BUFIO2

