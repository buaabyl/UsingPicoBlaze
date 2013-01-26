// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_IODELAYE1.v,v 1.3 2009/08/22 00:32:34 harikr Exp $
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
// /___/   /\     Filename : X_IODELAYE1.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    04/28/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_IODELAYE1 (CNTVALUEOUT, DATAOUT, C, CE, CINVCTRL, CLKIN, CNTVALUEIN, DATAIN, IDATAIN, INC, ODATAIN, RST, T);

    parameter CINVCTRL_SEL = "FALSE";
    parameter DELAY_SRC    = "I";
    parameter HIGH_PERFORMANCE_MODE    = "FALSE";
    parameter IDELAY_TYPE  = "DEFAULT";
    parameter integer IDELAY_VALUE = 0;
    parameter ODELAY_TYPE  = "FIXED";
    parameter integer ODELAY_VALUE = 0;
    parameter real REFCLK_FREQUENCY = 200.0;
    parameter SIGNAL_PATTERN    = "DATA";

    parameter ILEAK_ADJUST = 1.0;
    parameter D_IOBDELAY_OFFSET = 0.0;
    parameter LOC = "UNPLACED";
    parameter integer SIM_DELAY_D = 0;
    localparam DELAY_D = (IDELAY_TYPE == "VARIABLE") ? SIM_DELAY_D : 0;

    output [4:0] CNTVALUEOUT;
    output DATAOUT;

    input C;
    input CE;
    input CINVCTRL;
    input CLKIN;
    input [4:0] CNTVALUEIN;
    input DATAIN;
    input IDATAIN;
    input INC;
    input ODATAIN;
    input RST;
    input T ;


endmodule // X_IODELAYE1
