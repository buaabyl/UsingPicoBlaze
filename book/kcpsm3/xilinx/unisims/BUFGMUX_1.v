// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/BUFGMUX_1.v,v 1.3 2009/08/22 00:32:34 harikr Exp $
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
// /___/   /\     Filename : BUFGMUX_1.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    04/28/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module BUFGMUX_1 (O, I0, I1, S);

    parameter CLK_SEL_TYPE = "SYNC";
    output O;

    input  I0, I1, S;

endmodule
