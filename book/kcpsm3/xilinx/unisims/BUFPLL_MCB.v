// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/BUFPLL_MCB.v,v 1.3 2009/08/22 00:32:34 harikr Exp $
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
// /___/   /\     Filename : BUFPLL_MCB.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    04/28/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module BUFPLL_MCB (IOCLK0, IOCLK1, SERDESSTROBE0, SERDESSTROBE1, PLLIN0, PLLIN1);



    parameter integer DIVIDE = 2;        // {1..8}
    parameter LOCK_SRC = "LOCK_TO_0";


    output IOCLK0;
    output IOCLK1;
    output SERDESSTROBE0;
    output SERDESSTROBE1;

    input PLLIN0;
    input PLLIN1;

endmodule // BUFPLL_MCB

