// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMB4_S1.v,v 1.3 2008/10/02 19:01:56 vandanad Exp $

`celldefine
`timescale 1 ps/1 ps

module X_RAMB4_S1 (DO, ADDR, CLK, DI, EN, RST, WE);

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
    parameter LOC = "UNPLACED";
    output [0:0] DO;
    input [11:0] ADDR;
    input [0:0] DI;
    input EN, CLK, WE, RST;

    pulldown addr[11:0] (ADDR);
    pulldown di[0:0] (DI);

    x_ramb4_s1_int u1 (DO, ADDR, CLK, DI, EN, RST, WE);

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

endmodule
