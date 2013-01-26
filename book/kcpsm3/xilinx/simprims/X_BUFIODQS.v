// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_BUFIODQS.v,v 1.4 2009/09/02 19:44:54 vandanad Exp $
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
// /___/   /\     Filename : X_BUFIODQS.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    04/28/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_BUFIODQS (O, DQSMASK, I);

    parameter DQSMASK_ENABLE = "FALSE";      // TRUE, FALSE

    parameter LOC = "UNPLACED";

    output O; 
    input DQSMASK; 
    input I; 

endmodule // X_BUFIODQS
