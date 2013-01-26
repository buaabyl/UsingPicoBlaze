///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 9.1i 
//  \   \         Description : Xilinx Timing Formal Library Component
//  /   /                  Multifunctional, Cascadable, 48-bit Output Arithmetic Block
// /___/   /\     Filename : X_DSP48A.v
// \   \  /  \    Timestamp : Tues Nov 13 17:09:20 PST 2007
//  \___\/\___\
//
// Revision:
//    11/13/07 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_DSP48A (BCOUT, CARRYOUT, P, PCOUT, A, B, BCIN, C, CARRYIN, CEA, CEB, CEC, CECARRYIN, CED, CEM, CEOPMODE, CEP, CLK, D, OPMODE, PCIN, RSTA, RSTB, RSTC, RSTCARRYIN, RSTD, RSTM, RSTOPMODE, RSTP); 

    parameter  A0REG = 0;
    parameter  A1REG = 1;
    parameter  B0REG = 0;
    parameter  B1REG = 1;
    parameter  CARRYINREG = 1;
    parameter CARRYINSEL = "CARRYIN";
    parameter  CREG = 1;
    parameter  DREG = 1;
    parameter  MREG = 1;
    parameter  OPMODEREG = 1;
    parameter  PREG = 1;
    parameter RSTTYPE = "SYNC";
    parameter LOC = "UNPLACED";
    parameter B_INPUT = "DIRECT";


    output [17:0] BCOUT; 
    output CARRYOUT; 
    output [47:0] P; 
    output [47:0] PCOUT;

    input [17:0] A;
    input [17:0] B;
    input [17:0] BCIN;
    input [47:0] C;
    input CARRYIN;
    input CEA;
    input CEB;
    input CEC;
    input CECARRYIN;
    input CED;
    input CEM;
    input CEOPMODE;
    input CEP;
    input CLK;
    input [17:0] D;
    input [7:0] OPMODE;
    input [47:0] PCIN;
    input RSTA;
    input RSTB;
    input RSTC;
    input RSTCARRYIN;
    input RSTD;
    input RSTM;  
    input RSTOPMODE;
    input RSTP;


endmodule // X_DSP48A

