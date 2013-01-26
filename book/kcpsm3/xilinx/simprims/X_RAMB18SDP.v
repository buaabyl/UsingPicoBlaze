// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMB18SDP.v,v 1.4 2008/10/02 19:01:56 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.2i
//  \   \         Description : Xilinx Formal Verification Library Component
//  /   /                  16K-Bit Data and 2K-Bit Parity Block RAM
// /___/   /\     Filename : X_RAMB18SDP.v
// \   \  /  \    Timestamp : Thu Jun  8 15:42:06 PDT 2006
//  \___\/\___\
//
// Revision:
//    06/08/06 - Initial version.
// End Revision

`timescale 1 ps/1 ps

module X_RAMB18SDP (DO, DOP, 
            DI, DIP, RDADDR, RDCLK, RDEN, REGCE, SSR, WE, WRADDR, WRCLK, WREN);

    parameter DO_REG = 0;
    parameter INIT = 36'h0;
    parameter INITP_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_14 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_15 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_16 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_17 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_18 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_19 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_20 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_21 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_22 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_23 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_24 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_25 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_26 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_27 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_28 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_29 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_FILE = "NONE";
    parameter SETUP_ALL = 1000;
    parameter SETUP_READ_FIRST = 3000;
    parameter SIM_COLLISION_CHECK = "ALL";
    parameter SRVAL = 36'h0;
    parameter LOC = "UNPLACED";
    output [31:0] DO;
    output [3:0] DOP;
    input RDCLK;
    input RDEN;
    input REGCE;
    input SSR;
    input WRCLK;
    input WREN;
    input [8:0] WRADDR;
    input [8:0] RDADDR;
    input [31:0] DI;
    input [3:0] DIP;
    input [3:0] WE;
    
    pulldown di_port[31:0] (DI);
    pulldown dip_port[3:0] (DIP);
    pulldown rdaddr_port[8:0] (RDADDR);
    pulldown wraddr_port[8:0] (WRADDR);

    wire [7:0]     dangle_out8;
    wire dangle_out;
    wire [3:0] dangle_out4;
    wire [31:0] dangle_out32;

    X_ARAMB36_INTERNAL INT_RAMB (.DIA(64'b0), .ENA(RDEN), .WEA(8'b0), .SSRA(SSR), .ADDRA({2'b0, RDADDR, 5'b0}), .CLKA(RDCLK), .DOA({dangle_out32,DO}), .DIB({32'b0,DI}), .ENB(WREN), .WEB({2{WE}}), .SSRB(1'b0), .ADDRB({2'b0, WRADDR, 5'b0}), .CLKB(WRCLK), .DOB(dangle_out32), .DOPA({dangle_out4,DOP}), .DOPB(dangle_out4), .DIPA(4'b0), .DIPB({4'b0,DIP}), .CASCADEOUTLATA(dangle_out), .CASCADEOUTLATB(dangle_out), .CASCADEOUTREGA(dangle_out), .CASCADEOUTREGB(dangle_out), .CASCADEINLATA(1'b0), .CASCADEINLATB(1'b0), .CASCADEINREGA(1'b0), .CASCADEINREGB(1'b0), .REGCEA(REGCE), .REGCEB(1'b0), .REGCLKA(RDCLK), .REGCLKB(1'b0), .DBITERR(dangle_out), .ECCPARITY(dangle_out8), .SBITERR(dangle_out));

    defparam     INT_RAMB.BRAM_MODE = "SIMPLE_DUAL_PORT";
    defparam INT_RAMB.BRAM_SIZE = 18;
    defparam INT_RAMB.INIT_A = INIT;
    defparam INT_RAMB.INIT_B = INIT;
    defparam INT_RAMB.INIT_FILE = INIT_FILE;
    defparam INT_RAMB.SRVAL_A = SRVAL;
    defparam INT_RAMB.SRVAL_B = SRVAL;
    defparam INT_RAMB.READ_WIDTH_A = 36;
    defparam INT_RAMB.READ_WIDTH_B = 36;
    defparam INT_RAMB.WRITE_WIDTH_A = 36;
    defparam INT_RAMB.WRITE_WIDTH_B = 36;
    defparam INT_RAMB.WRITE_MODE_A = "READ_FIRST";
    defparam INT_RAMB.WRITE_MODE_B = "READ_FIRST";
    defparam INT_RAMB.SETUP_ALL = SETUP_ALL;
    defparam INT_RAMB.SETUP_READ_FIRST = SETUP_READ_FIRST;
    defparam INT_RAMB.SIM_COLLISION_CHECK = SIM_COLLISION_CHECK;
    defparam INT_RAMB.DOA_REG = DO_REG;
    defparam INT_RAMB.DOB_REG = DO_REG;
    defparam INT_RAMB.INIT_00 = INIT_00;
    defparam INT_RAMB.INIT_01 = INIT_01;
    defparam INT_RAMB.INIT_02 = INIT_02;
    defparam INT_RAMB.INIT_03 = INIT_03;
    defparam INT_RAMB.INIT_04 = INIT_04;
    defparam INT_RAMB.INIT_05 = INIT_05;
    defparam INT_RAMB.INIT_06 = INIT_06;
    defparam INT_RAMB.INIT_07 = INIT_07;
    defparam INT_RAMB.INIT_08 = INIT_08;
    defparam INT_RAMB.INIT_09 = INIT_09;
    defparam INT_RAMB.INIT_0A = INIT_0A;
    defparam INT_RAMB.INIT_0B = INIT_0B;
    defparam INT_RAMB.INIT_0C = INIT_0C;
    defparam INT_RAMB.INIT_0D = INIT_0D;
    defparam INT_RAMB.INIT_0E = INIT_0E;
    defparam INT_RAMB.INIT_0F = INIT_0F;
    defparam INT_RAMB.INIT_10 = INIT_10;
    defparam INT_RAMB.INIT_11 = INIT_11;
    defparam INT_RAMB.INIT_12 = INIT_12;
    defparam INT_RAMB.INIT_13 = INIT_13;
    defparam INT_RAMB.INIT_14 = INIT_14;
    defparam INT_RAMB.INIT_15 = INIT_15;
    defparam INT_RAMB.INIT_16 = INIT_16;
    defparam INT_RAMB.INIT_17 = INIT_17;
    defparam INT_RAMB.INIT_18 = INIT_18;
    defparam INT_RAMB.INIT_19 = INIT_19;
    defparam INT_RAMB.INIT_1A = INIT_1A;
    defparam INT_RAMB.INIT_1B = INIT_1B;
    defparam INT_RAMB.INIT_1C = INIT_1C;
    defparam INT_RAMB.INIT_1D = INIT_1D;
    defparam INT_RAMB.INIT_1E = INIT_1E;
    defparam INT_RAMB.INIT_1F = INIT_1F;
    defparam INT_RAMB.INIT_20 = INIT_20;
    defparam INT_RAMB.INIT_21 = INIT_21;
    defparam INT_RAMB.INIT_22 = INIT_22;
    defparam INT_RAMB.INIT_23 = INIT_23;
    defparam INT_RAMB.INIT_24 = INIT_24;
    defparam INT_RAMB.INIT_25 = INIT_25;
    defparam INT_RAMB.INIT_26 = INIT_26;
    defparam INT_RAMB.INIT_27 = INIT_27;
    defparam INT_RAMB.INIT_28 = INIT_28;
    defparam INT_RAMB.INIT_29 = INIT_29;
    defparam INT_RAMB.INIT_2A = INIT_2A;
    defparam INT_RAMB.INIT_2B = INIT_2B;
    defparam INT_RAMB.INIT_2C = INIT_2C;
    defparam INT_RAMB.INIT_2D = INIT_2D;
    defparam INT_RAMB.INIT_2E = INIT_2E;
    defparam INT_RAMB.INIT_2F = INIT_2F;
    defparam INT_RAMB.INIT_30 = INIT_30;
    defparam INT_RAMB.INIT_31 = INIT_31;
    defparam INT_RAMB.INIT_32 = INIT_32;
    defparam INT_RAMB.INIT_33 = INIT_33;
    defparam INT_RAMB.INIT_34 = INIT_34;
    defparam INT_RAMB.INIT_35 = INIT_35;
    defparam INT_RAMB.INIT_36 = INIT_36;
    defparam INT_RAMB.INIT_37 = INIT_37;
    defparam INT_RAMB.INIT_38 = INIT_38;
    defparam INT_RAMB.INIT_39 = INIT_39;
    defparam INT_RAMB.INIT_3A = INIT_3A;
    defparam INT_RAMB.INIT_3B = INIT_3B;
    defparam INT_RAMB.INIT_3C = INIT_3C;
    defparam INT_RAMB.INIT_3D = INIT_3D;
    defparam INT_RAMB.INIT_3E = INIT_3E;
    defparam INT_RAMB.INIT_3F = INIT_3F;
    defparam INT_RAMB.INITP_00 = INITP_00;
    defparam INT_RAMB.INITP_01 = INITP_01;
    defparam INT_RAMB.INITP_02 = INITP_02;
    defparam INT_RAMB.INITP_03 = INITP_03;
    defparam INT_RAMB.INITP_04 = INITP_04;
    defparam INT_RAMB.INITP_05 = INITP_05;
    defparam INT_RAMB.INITP_06 = INITP_06;
    defparam INT_RAMB.INITP_07 = INITP_07;
    
endmodule // X_RAMB18SDP
