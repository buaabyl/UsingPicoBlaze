// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/ramb4_s16_int.v,v 1.1 2005/05/10 01:20:09 wloo Exp $

/*

FUNCTION    : 4x16 Block RAM with synchronous write capability

*/

`celldefine
`timescale  100 ps / 10 ps

module ramb4_s16_int (DO, ADDR, CLK, DI, EN, RST, WE);

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

    output [15:0] DO;
    reg [15:0] DO;

    input [7:0] ADDR;
    input [15:0] DI;
    input EN, CLK, WE, RST;

// synopsys translate_off
    reg [4095:0] mem;
    reg [8:0] count;

    initial begin
    for (count = 0; count < 256; count = count + 1) begin
        mem[count]          <= INIT_00[count];
        mem[256 * 1 + count]  <= INIT_01[count];
        mem[256 * 2 + count]  <= INIT_02[count];
        mem[256 * 3 + count]  <= INIT_03[count];
        mem[256 * 4 + count]  <= INIT_04[count];
        mem[256 * 5 + count]  <= INIT_05[count];
        mem[256 * 6 + count]  <= INIT_06[count];
        mem[256 * 7 + count]  <= INIT_07[count];
        mem[256 * 8 + count]  <= INIT_08[count];
        mem[256 * 9 + count]  <= INIT_09[count];
        mem[256 * 10 + count] <= INIT_0A[count];
        mem[256 * 11 + count] <= INIT_0B[count];
        mem[256 * 12 + count] <= INIT_0C[count];
        mem[256 * 13 + count] <= INIT_0D[count];
        mem[256 * 14 + count] <= INIT_0E[count];
        mem[256 * 15 + count] <= INIT_0F[count];
    end
    end

    always @(posedge CLK) begin
    if (EN == 1'b1)
        if (RST == 1'b1)
        begin
            DO[0] <= 0;
            DO[1] <= 0;
            DO[2] <= 0;
            DO[3] <= 0;
            DO[4] <= 0;
            DO[5] <= 0;
            DO[6] <= 0;
            DO[7] <= 0;
            DO[8] <= 0;
            DO[9] <= 0;
            DO[10] <= 0;
            DO[11] <= 0;
            DO[12] <= 0;
            DO[13] <= 0;
            DO[14] <= 0;
            DO[15] <= 0;
        end
        else
        if (WE == 1'b1)
            begin
            DO[0] <= DI[0];
            DO[1] <= DI[1];
            DO[2] <= DI[2];
            DO[3] <= DI[3];
            DO[4] <= DI[4];
            DO[5] <= DI[5];
            DO[6] <= DI[6];
            DO[7] <= DI[7];
            DO[8] <= DI[8];
            DO[9] <= DI[9];
            DO[10] <= DI[10];
            DO[11] <= DI[11];
            DO[12] <= DI[12];
            DO[13] <= DI[13];
            DO[14] <= DI[14];
            DO[15] <= DI[15];
            end
        else
            begin
            DO[0] <= mem[ADDR * 16];
            DO[1] <= mem[ADDR * 16 + 1];
            DO[2] <= mem[ADDR * 16 + 2];
            DO[3] <= mem[ADDR * 16 + 3];
            DO[4] <= mem[ADDR * 16 + 4];
            DO[5] <= mem[ADDR * 16 + 5];
            DO[6] <= mem[ADDR * 16 + 6];
            DO[7] <= mem[ADDR * 16 + 7];
            DO[8] <= mem[ADDR * 16 + 8];
            DO[9] <= mem[ADDR * 16 + 9];
            DO[10] <= mem[ADDR * 16 + 10];
            DO[11] <= mem[ADDR * 16 + 11];
            DO[12] <= mem[ADDR * 16 + 12];
            DO[13] <= mem[ADDR * 16 + 13];
            DO[14] <= mem[ADDR * 16 + 14];
            DO[15] <= mem[ADDR * 16 + 15];
            end
    end

    always @(posedge CLK) begin
    if (EN == 1'b1 && WE == 1'b1)
        begin
        mem[ADDR * 16] <= DI[0];
        mem[ADDR * 16 + 1] <= DI[1];
        mem[ADDR * 16 + 2] <= DI[2];
        mem[ADDR * 16 + 3] <= DI[3];
        mem[ADDR * 16 + 4] <= DI[4];
        mem[ADDR * 16 + 5] <= DI[5];
        mem[ADDR * 16 + 6] <= DI[6];
        mem[ADDR * 16 + 7] <= DI[7];
        mem[ADDR * 16 + 8] <= DI[8];
        mem[ADDR * 16 + 9] <= DI[9];
        mem[ADDR * 16 + 10] <= DI[10];
        mem[ADDR * 16 + 11] <= DI[11];
        mem[ADDR * 16 + 12] <= DI[12];
        mem[ADDR * 16 + 13] <= DI[13];
        mem[ADDR * 16 + 14] <= DI[14];
        mem[ADDR * 16 + 15] <= DI[15];
        end
    end
// synopsys translate_on

endmodule
