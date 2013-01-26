// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_IODELAY.v,v 1.3 2008/10/02 19:01:54 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.2i
//  \   \         Description : Xilinx Formal Verification Library Component
//  /   /                  Input and/or Output Fixed or Variable Delay Element.
// /___/   /\     Filename : X_IODELAY.v
// \   \  /  \    Timestamp : Thu Jun  8 15:42:06 PDT 2006
//  \___\/\___\
//
// Revision:
//    06/08/06 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_IODELAY (DATAOUT, C, CE, DATAIN, IDATAIN, INC, ODATAIN, RST, T);

    parameter DELAY_SRC    = "I";
    parameter HIGH_PERFORMANCE_MODE    = "TRUE";
    parameter IDELAY_TYPE  = "DEFAULT";
    parameter IDELAY_VALUE = 0;
    parameter ODELAY_VALUE = 0;
    parameter REFCLK_FREQUENCY = 200.0;
    parameter SIGNAL_PATTERN    = "DATA";

    parameter ILEAK_ADJUST = 1.0;
    parameter D_IOBDELAY_OFFSET = 0.0;
    parameter LOC = "UNPLACED";
    output DATAOUT;

    input C;
    input CE;
    input DATAIN;
    input IDATAIN;
    input INC;
    input ODATAIN;
    input RST;
    input T ;

endmodule // X_IODELAY
