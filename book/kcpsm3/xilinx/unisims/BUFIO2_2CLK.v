// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/BUFIO2_2CLK.v,v 1.3 2009/08/22 00:32:34 harikr Exp $
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
// /___/   /\     Filename : BUFIO2_2CLK.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    04/28/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module BUFIO2_2CLK (DIVCLK, IOCLK, SERDESSTROBE, I, IB);



  parameter integer DIVIDE = 2;        // {2..8}


    output DIVCLK; 
    output IOCLK; 
    output SERDESSTROBE; 

    input I; 
    input IB; 

endmodule // BUFIO2_2CLK

