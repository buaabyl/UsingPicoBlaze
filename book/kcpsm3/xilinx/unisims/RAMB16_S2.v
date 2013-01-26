// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/RAMB16_S2.v,v 1.2 2007/05/02 17:48:32 vandanad Exp $

`celldefine
`timescale 1 ps/1 ps

module RAMB16_S2 (DO, ADDR, CLK, DI, EN, SSR, WE);

    parameter INIT = 2'h0;
    parameter SRVAL = 2'h0;
    parameter WRITE_MODE = "WRITE_FIRST";
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
    output [1:0] DO;
    input [12:0] ADDR;
    input [1:0] DI;
    input EN, CLK, WE, SSR;

    pulldown addr[12:0] (ADDR);
    pulldown di[1:0] (DI);

    ramb16_s2_int u1 (DO, ADDR, CLK, DI, EN, SSR, WE);

    defparam u1.INIT = INIT;
    defparam u1.SRVAL = SRVAL;
    defparam u1.WRITE_MODE = WRITE_MODE;
    defparam u1.INIT_00 = INIT_00;
    defparam u1.INIT_01 = INIT_01;
    defparam u1.INIT_02 = INIT_02;
    defparam u1.INIT_03 = INIT_03;
    defparam u1.INIT_04 = INIT_04;
    defparam u1.INIT_05 = INIT_05;
    defparam u1.INIT_06 = INIT_06;
    defparam u1.INIT_07 = INIT_07;
    defparam u1.INIT_08 = INIT_08;
    defparam u1.INIT_09 = INIT_09;
    defparam u1.INIT_0A = INIT_0A;
    defparam u1.INIT_0B = INIT_0B;
    defparam u1.INIT_0C = INIT_0C;
    defparam u1.INIT_0D = INIT_0D;
    defparam u1.INIT_0E = INIT_0E;
    defparam u1.INIT_0F = INIT_0F;
    defparam u1.INIT_10 = INIT_10;
    defparam u1.INIT_11 = INIT_11;
    defparam u1.INIT_12 = INIT_12;
    defparam u1.INIT_13 = INIT_13;
    defparam u1.INIT_14 = INIT_14;
    defparam u1.INIT_15 = INIT_15;
    defparam u1.INIT_16 = INIT_16;
    defparam u1.INIT_17 = INIT_17;
    defparam u1.INIT_18 = INIT_18;
    defparam u1.INIT_19 = INIT_19;
    defparam u1.INIT_1A = INIT_1A;
    defparam u1.INIT_1B = INIT_1B;
    defparam u1.INIT_1C = INIT_1C;
    defparam u1.INIT_1D = INIT_1D;
    defparam u1.INIT_1E = INIT_1E;
    defparam u1.INIT_1F = INIT_1F;
    defparam u1.INIT_20 = INIT_20;
    defparam u1.INIT_21 = INIT_21;
    defparam u1.INIT_22 = INIT_22;
    defparam u1.INIT_23 = INIT_23;
    defparam u1.INIT_24 = INIT_24;
    defparam u1.INIT_25 = INIT_25;
    defparam u1.INIT_26 = INIT_26;
    defparam u1.INIT_27 = INIT_27;
    defparam u1.INIT_28 = INIT_28;
    defparam u1.INIT_29 = INIT_29;
    defparam u1.INIT_2A = INIT_2A;
    defparam u1.INIT_2B = INIT_2B;
    defparam u1.INIT_2C = INIT_2C;
    defparam u1.INIT_2D = INIT_2D;
    defparam u1.INIT_2E = INIT_2E;
    defparam u1.INIT_2F = INIT_2F;
    defparam u1.INIT_30 = INIT_30;
    defparam u1.INIT_31 = INIT_31;
    defparam u1.INIT_32 = INIT_32;
    defparam u1.INIT_33 = INIT_33;
    defparam u1.INIT_34 = INIT_34;
    defparam u1.INIT_35 = INIT_35;
    defparam u1.INIT_36 = INIT_36;
    defparam u1.INIT_37 = INIT_37;
    defparam u1.INIT_38 = INIT_38;
    defparam u1.INIT_39 = INIT_39;
    defparam u1.INIT_3A = INIT_3A;
    defparam u1.INIT_3B = INIT_3B;
    defparam u1.INIT_3C = INIT_3C;
    defparam u1.INIT_3D = INIT_3D;
    defparam u1.INIT_3E = INIT_3E;
    defparam u1.INIT_3F = INIT_3F;

endmodule
