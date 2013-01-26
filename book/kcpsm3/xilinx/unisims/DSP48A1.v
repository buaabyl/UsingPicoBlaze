// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/DSP48A1.v,v 1.3 2009/08/22 00:32:34 harikr Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2009 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 11.1i (L.11)
//  \   \         Description : Xilinx Formal Library Component
//  /   /
// /___/   /\     Filename : DSP48A1.v
// \   \  /  \    Timestamp :
//  \___\/\___\
//
// Revision:
//    04/28/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module DSP48A1 (BCOUT, CARRYOUT, CARRYOUTF, M, P, PCOUT, A, B, C, CARRYIN, CEA, CEB, CEC, CECARRYIN, CED, CEM, CEOPMODE, CEP, CLK, D, OPMODE, PCIN, RSTA, RSTB, RSTC, RSTCARRYIN, RSTD, RSTM, RSTOPMODE, RSTP); 

    parameter integer A0REG = 0;
    parameter integer A1REG = 1;
    parameter integer B0REG = 0;
    parameter integer B1REG = 1;
    parameter integer CARRYINREG = 1;
    parameter integer CARRYOUTREG = 1;
    parameter CARRYINSEL = "OPMODE5";
    parameter integer CREG = 1;
    parameter integer DREG = 1;
    parameter integer MREG = 1;
    parameter integer OPMODEREG = 1;
    parameter integer PREG = 1;
    parameter RSTTYPE = "SYNC";


    output [17:0] BCOUT; 
    output CARRYOUT; 
    output CARRYOUTF; 
    output [35:0] M; 
    output [47:0] P; 
    output [47:0] PCOUT;

    input [17:0] A;
    input [17:0] B;

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

    endmodule // DSP48A1

