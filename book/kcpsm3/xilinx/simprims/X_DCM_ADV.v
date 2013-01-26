// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_DCM_ADV.v,v 1.4 2008/10/02 19:01:53 vandanad Exp $

`timescale  1 ps / 1 ps

module X_DCM_ADV (
        CLK0,
        CLK180,
        CLK270,
        CLK2X,
        CLK2X180,
        CLK90,
        CLKDV,
        CLKFX,
        CLKFX180,
        DO,
        DRDY,
        LOCKED,
        PSDONE,
        CLKFB,
        CLKIN,
        DADDR,
        DCLK,
        DEN,
        DI,
        DWE,
        PSCLK,
        PSEN,
        PSINCDEC,
        RST
);

parameter CLKDV_DIVIDE = 2.0;
parameter CLKFX_DIVIDE = 1;
parameter CLKFX_MULTIPLY = 4;
parameter CLKIN_DIVIDE_BY_2 = "FALSE";
parameter CLKIN_PERIOD = 0.0;                  // non-simulatable
parameter CLKOUT_PHASE_SHIFT = "NONE";
parameter CLK_FEEDBACK = "1X";
parameter DCM_PERFORMANCE_MODE = "MAX_SPEED";   // non-simulatable
parameter DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS"; // non-simulatable
parameter DFS_FREQUENCY_MODE = "LOW";
parameter DFS_OSCILLATOR_MODE = "PHASE_FREQ_LOCK";
parameter DLL_FREQUENCY_MODE = "LOW";
parameter DUTY_CYCLE_CORRECTION = "TRUE";
parameter FACTORY_JF = 16'hC080;                // non-simulatable
parameter MAXPERCLKIN = 1000000;                // non-modifiable simulation parameter
parameter MAXPERPSCLK = 100000000;              // non-modifiable simulation parameter
parameter PHASE_SHIFT = 0;
parameter SIM_CLKIN_CYCLE_JITTER = 300;         // non-modifiable simulation parameter
parameter SIM_CLKIN_PERIOD_JITTER = 1000;       // non-modifiable simulation parameter
parameter STARTUP_WAIT = "FALSE";               // non-simulatable
parameter LOC = "UNPLACED";
output CLK0;
output CLK180;
output CLK270;
output CLK2X180;
output CLK2X;
output CLK90;
output CLKDV;
output CLKFX180;
output CLKFX;
output DRDY;
output LOCKED;
output PSDONE;
output [15:0] DO;
input CLKFB;
input CLKIN;
input DCLK;
input DEN;
input DWE;
input PSCLK;
input PSEN;
input PSINCDEC;
input RST;
input [15:0] DI;
input [6:0] DADDR;

endmodule
