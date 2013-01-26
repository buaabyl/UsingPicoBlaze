///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2005 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Formal Library Component
//  /   /                  16K-Bit Data and 2K-Bit Parity Dual Port Block RAM
// /___/   /\     Filename : RAMB16BWE_S18_S9.v
// \   \  /  \    Timestamp : Mon Nov 12 16:43:35 PST 2007
//  \___\/\___\
//
//  Generated by : VerilogFileWriter (write_verilog)
//
// Revision:
//    11/12/07 - Initial version.
// End Revision
`timescale 1 ps / 1 ps 

module RAMB16BWE_S18_S9 (
    DOA,
    DOB,
    DOPA,
    DOPB,
    ADDRA,
    ADDRB,
    CLKA,
    CLKB,
    DIA,
    DIB,
    DIPA,
    DIPB,
    ENA,
    ENB,
    SSRA,
    SSRB,
    WEA,
    WEB

);

output [15:0] DOA;
output [1:0] DOPA;
output [7:0] DOB;
output [0:0] DOPB;

input [9:0] ADDRA;
input [10:0] ADDRB;
input CLKA;
input CLKB;
input [15:0] DIA;
input [1:0] DIPA;
input [7:0] DIB;
input [0:0] DIPB;
input ENA;
input ENB;
input SSRA;
input SSRB;
input [1:0] WEA;
input WEB;

parameter INITP_00 = 256'h0;
parameter INITP_01 = 256'h0;
parameter INITP_02 = 256'h0;
parameter INITP_03 = 256'h0;
parameter INITP_04 = 256'h0;
parameter INITP_05 = 256'h0;
parameter INITP_06 = 256'h0;
parameter INITP_07 = 256'h0;
parameter INIT_00 = 256'h0;
parameter INIT_01 = 256'h0;
parameter INIT_02 = 256'h0;
parameter INIT_03 = 256'h0;
parameter INIT_04 = 256'h0;
parameter INIT_05 = 256'h0;
parameter INIT_06 = 256'h0;
parameter INIT_07 = 256'h0;
parameter INIT_08 = 256'h0;
parameter INIT_09 = 256'h0;
parameter INIT_0A = 256'h0;
parameter INIT_0B = 256'h0;
parameter INIT_0C = 256'h0;
parameter INIT_0D = 256'h0;
parameter INIT_0E = 256'h0;
parameter INIT_0F = 256'h0;
parameter INIT_10 = 256'h0;
parameter INIT_11 = 256'h0;
parameter INIT_12 = 256'h0;
parameter INIT_13 = 256'h0;
parameter INIT_14 = 256'h0;
parameter INIT_15 = 256'h0;
parameter INIT_16 = 256'h0;
parameter INIT_17 = 256'h0;
parameter INIT_18 = 256'h0;
parameter INIT_19 = 256'h0;
parameter INIT_1A = 256'h0;
parameter INIT_1B = 256'h0;
parameter INIT_1C = 256'h0;
parameter INIT_1D = 256'h0;
parameter INIT_1E = 256'h0;
parameter INIT_1F = 256'h0;
parameter INIT_20 = 256'h0;
parameter INIT_21 = 256'h0;
parameter INIT_22 = 256'h0;
parameter INIT_23 = 256'h0;
parameter INIT_24 = 256'h0;
parameter INIT_25 = 256'h0;
parameter INIT_26 = 256'h0;
parameter INIT_27 = 256'h0;
parameter INIT_28 = 256'h0;
parameter INIT_29 = 256'h0;
parameter INIT_2A = 256'h0;
parameter INIT_2B = 256'h0;
parameter INIT_2C = 256'h0;
parameter INIT_2D = 256'h0;
parameter INIT_2E = 256'h0;
parameter INIT_2F = 256'h0;
parameter INIT_30 = 256'h0;
parameter INIT_31 = 256'h0;
parameter INIT_32 = 256'h0;
parameter INIT_33 = 256'h0;
parameter INIT_34 = 256'h0;
parameter INIT_35 = 256'h0;
parameter INIT_36 = 256'h0;
parameter INIT_37 = 256'h0;
parameter INIT_38 = 256'h0;
parameter INIT_39 = 256'h0;
parameter INIT_3A = 256'h0;
parameter INIT_3B = 256'h0;
parameter INIT_3C = 256'h0;
parameter INIT_3D = 256'h0;
parameter INIT_3E = 256'h0;
parameter INIT_3F = 256'h0;
parameter INIT_A = 18'h0;
parameter INIT_B = 9'h0;
parameter SIM_COLLISION_CHECK = "ALL";
parameter SRVAL_A = 18'h0;
parameter SRVAL_B = 9'h0;
parameter WRITE_MODE_A = "WRITE_FIRST";
parameter WRITE_MODE_B = "WRITE_FIRST";

endmodule
