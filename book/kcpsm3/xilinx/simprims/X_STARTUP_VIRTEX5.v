// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_STARTUP_VIRTEX5.v,v 1.2 2009/09/02 22:11:51 vandanad Exp $
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
    // /___/   /\     Filename : X_STARTUP_VIRTEX5.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    09/01/09 - Initial version.
// End Revision

`timescale 1 ps / 1 ps 

module X_STARTUP_VIRTEX5 (
        CFGCLK,
        CFGMCLK,
        DINSPI,
    EOS,
        TCKSPI,
    CLK,
    GSR,
    GTS,
    USRCCLKO,
    USRCCLKTS,
    USRDONEO,
    USRDONETS
);

output CFGCLK;
output CFGMCLK;
output DINSPI;
output EOS;
output TCKSPI;

input CLK;
input GSR;
input GTS;
input USRCCLKO;
input USRCCLKTS;
input USRDONEO;
input USRDONETS;

endmodule