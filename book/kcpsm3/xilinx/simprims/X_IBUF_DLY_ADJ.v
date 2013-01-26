///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.19)
//  \   \         Description : Xilinx Formal Library Component
//  /   /                  Dynamically Adjustable Input Delay Buffer
// /___/   /\     Filename : X_IBUF_DLY_ADJ.v
// \   \  /  \    Timestamp : Thu Feb 17 16:44:07 PST 2005
//  \___\/\___\
//
// Revision:
//    03/23/05 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_IBUF_DLY_ADJ (O, I, S);

    output O;

    input I;
    input [2:0] S;


    parameter DELAY_OFFSET = "OFF";
    parameter IOSTANDARD = "DEFAULT";    

    parameter LOC = "UNPLACED";
    parameter integer SIM_TAPDELAY_VALUE = 200;
    parameter integer SIM_DELAY0 = 0;
    parameter integer SIM_DELAY1 = 0;
    parameter integer SIM_DELAY2 = 0;
    parameter integer SIM_DELAY3 = 0;
    parameter integer SIM_DELAY4 = 0;
    parameter integer SIM_DELAY5 = 0;
    parameter integer SIM_DELAY6 = 0;
    parameter integer SIM_DELAY7 = 0;
    parameter integer SIM_DELAY8 = 0;
    parameter integer SIM_DELAY9 = 0;
    parameter integer SIM_DELAY10 = 0;
    parameter integer SIM_DELAY11 = 0;
    parameter integer SIM_DELAY12 = 0;
    parameter integer SIM_DELAY13 = 0;
    parameter integer SIM_DELAY14 = 0;
    parameter integer SIM_DELAY15 = 0;
    parameter integer SIM_DELAY16 = 0;

    parameter integer SPECTRUM_OFFSET_DELAY = 1600;


endmodule // X_IBUF_DLY_ADJ

