// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_BUFPLL.v,v 1.4 2009/09/02 19:44:54 vandanad Exp $
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
// /___/   /\     Filename : X_BUFPLL.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    04/28/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_BUFPLL (IOCLK, LOCK, SERDESSTROBE, GCLK, LOCKED, PLLIN);


    parameter integer DIVIDE = 1;        // {1..8}

    parameter LOC = "UNPLACED";
    parameter ENABLE_SYNC = "TRUE";


    output IOCLK;
    output LOCK;
    output SERDESSTROBE;

    input GCLK;
    input LOCKED;
    input PLLIN;


endmodule // X_BUFPLL

