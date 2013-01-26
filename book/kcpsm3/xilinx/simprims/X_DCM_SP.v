///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1i (K.23)
//  \   \         Description : Xilinx Timing Formal Library Component
//  /   /                  Digital Clock Manager
// /___/   /\     Filename : X_DCM_SP.v
// \   \  /  \    Timestamp : 
//  \___\/\___\
//
// Revision:
//    11/13/07 - Initial version.
// End Revision


`timescale  1 ps / 1 ps

module X_DCM_SP (
    CLK0, CLK180, CLK270, CLK2X, CLK2X180, CLK90,
    CLKDV, CLKFX, CLKFX180, LOCKED, PSDONE, STATUS,
    CLKFB, CLKIN, DSSEN, PSCLK, PSEN, PSINCDEC, RST);

parameter CLKDV_DIVIDE = 2.0;
parameter CLKFX_DIVIDE = 1;
parameter CLKFX_MULTIPLY = 4;
parameter CLKIN_DIVIDE_BY_2 = "FALSE";
parameter CLKIN_PERIOD = 10.0;            // non-simulatable
parameter CLKOUT_PHASE_SHIFT = "NONE";
parameter CLK_FEEDBACK = "1X";
parameter DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS";    // non-simulatable
parameter DFS_FREQUENCY_MODE = "LOW";
parameter DLL_FREQUENCY_MODE = "LOW";
parameter DSS_MODE = "NONE";            // non-simulatable
parameter DUTY_CYCLE_CORRECTION = "TRUE";
parameter FACTORY_JF = 16'hC080;        // non-simulatable
parameter MAXPERCLKIN = 1000000;        // non-modifiable simulation parameter
parameter MAXPERPSCLK = 100000000;        // non-modifiable simulation parameter
parameter PHASE_SHIFT = 0;
parameter SIM_CLKIN_CYCLE_JITTER = 300;        // non-modifiable simulation parameter
parameter SIM_CLKIN_PERIOD_JITTER = 1000;    // non-modifiable simulation parameter
parameter STARTUP_WAIT = "FALSE";        // non-simulatable
parameter LOC = "UNPLACED";
localparam PS_STEP = 25;

input CLKFB, CLKIN, DSSEN;
input PSCLK, PSEN, PSINCDEC, RST;

output CLK0, CLK180, CLK270, CLK2X, CLK2X180, CLK90;
output CLKDV, CLKFX, CLKFX180, LOCKED, PSDONE;
output [7:0] STATUS;


endmodule
