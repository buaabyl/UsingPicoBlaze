// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_ISERDES.v,v 1.4 2008/10/02 19:01:54 vandanad Exp $

`timescale  1 ps / 1 ps

module X_ISERDES (O, Q1, Q2, Q3, Q4, Q5, Q6, SHIFTOUT1, SHIFTOUT2,
          BITSLIP, CE1, CE2, CLK, CLKDIV, D, DLYCE, DLYINC, DLYRST, OCLK, REV, SHIFTIN1, SHIFTIN2, SR);

    output O;
    output Q1;
    output Q2;
    output Q3;
    output Q4;
    output Q5;
    output Q6;
    output SHIFTOUT1;
    output SHIFTOUT2;
    input BITSLIP;
    input CE1;
    input CE2;
    input CLK;
    input CLKDIV;
    input D;
    input DLYCE;
    input DLYINC;
    input DLYRST;
    input OCLK;
    input REV;
    input SHIFTIN1;
    input SHIFTIN2;
    input SR;

    parameter BITSLIP_ENABLE = "FALSE";
    parameter DATA_RATE = "DDR";
    parameter DATA_WIDTH = 4;
    parameter INIT_Q1 = 1'b0;
    parameter INIT_Q2 = 1'b0;
    parameter INIT_Q3 = 1'b0;
    parameter INIT_Q4 = 1'b0;
    parameter INTERFACE_TYPE = "MEMORY";
    parameter IOBDELAY = "NONE";
    parameter IOBDELAY_TYPE = "DEFAULT";
    parameter IOBDELAY_VALUE = 0;
    parameter NUM_CE = 2;
    parameter SERDES_MODE = "MASTER";
    parameter SIM_TAPDELAY_VALUE = 75;
    parameter SRVAL_Q1 = 1'b0;
    parameter SRVAL_Q2 = 1'b0;
    parameter SRVAL_Q3 = 1'b0;
    parameter SRVAL_Q4 = 1'b0;    
    parameter LOC = "UNPLACED";
endmodule // X_ISERDES
