// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMB36E1.v,v 1.4.18.2 2010/06/23 17:05:50 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2008 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 11.1
//  \   \         Description : Xilinx Formal Verificationn Library Component
//  /   /                  32K-Bit Data and 4K-Bit Parity Dual Port Block RAM
// /___/   /\     Filename : X_RAMB36E1.v
// \   \  /  \    Timestamp : Fri Sep 11 17:14:16 PDT 2009
//  \___\/\___\
//
// Revision:
//    09/11/09 - Initial version.
//    01/05/10 - 2nd update.
// End Revision

`timescale 1 ps/1 ps

module X_RAMB36E1 (CASCADEOUTA, CASCADEOUTB, DBITERR, DOADO, DOBDO, DOPADOP, DOPBDOP, ECCPARITY, RDADDRECC, SBITERR, 
         ADDRARDADDR, ADDRBWRADDR, CASCADEINA, CASCADEINB, CLKARDCLK, CLKBWRCLK, DIADI, DIBDI, DIPADIP, DIPBDIP, ENARDEN, ENBWREN, INJECTDBITERR, INJECTSBITERR, REGCEAREGCE, REGCEB, RSTRAMARSTRAM, RSTRAMB, RSTREGARSTREG, RSTREGB, WEA, WEBWE);

    parameter integer DOA_REG = 0;
    parameter integer DOB_REG = 0;
    parameter EN_ECC_READ = "FALSE";
    parameter EN_ECC_WRITE = "FALSE";
    parameter INITP_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
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
    parameter INIT_40 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_41 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_42 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_43 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_44 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_45 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_46 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_47 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_48 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_49 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_50 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_51 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_52 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_53 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_54 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_55 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_56 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_57 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_58 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_59 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_60 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_61 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_62 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_63 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_64 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_65 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_66 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_67 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_68 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_69 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_70 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_71 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_72 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_73 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_74 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_75 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_76 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_77 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_78 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_79 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_A = 36'h0;
    parameter INIT_B = 36'h0;
    parameter INIT_FILE = "NONE";
    parameter LOC = "UNPLACED";
    parameter RAM_EXTENSION_A = "NONE";
    parameter RAM_EXTENSION_B = "NONE";
    parameter RAM_MODE = "TDP";
    parameter RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE";
    parameter integer READ_WIDTH_A = 0;
    parameter integer READ_WIDTH_B = 0;
    parameter RSTREG_PRIORITY_A = "RSTREG";
    parameter RSTREG_PRIORITY_B = "RSTREG";
    parameter SIM_COLLISION_CHECK = "ALL";
    parameter SRVAL_A = 36'h0;
    parameter SRVAL_B = 36'h0;
    parameter WRITE_MODE_A = "WRITE_FIRST";
    parameter WRITE_MODE_B = "WRITE_FIRST";
    parameter integer WRITE_WIDTH_A = 0;
    parameter integer WRITE_WIDTH_B = 0;
    
    localparam SETUP_ALL = 1000;
    localparam SETUP_READ_FIRST = 3000;
    
    output CASCADEOUTA;
    output CASCADEOUTB;
    output [31:0] DOADO;
    output [31:0] DOBDO;
    output [3:0] DOPADOP;
    output [3:0] DOPBDOP;
    output [7:0] ECCPARITY;
    output [8:0] RDADDRECC;
    output SBITERR, DBITERR;
    
    input ENARDEN, CLKARDCLK, RSTRAMARSTRAM, RSTREGARSTREG, CASCADEINA, REGCEAREGCE;
    input ENBWREN, CLKBWRCLK, RSTRAMB, RSTREGB, CASCADEINB, REGCEB;
    input INJECTDBITERR, INJECTSBITERR;
    input [15:0] ADDRARDADDR;
    input [15:0] ADDRBWRADDR;
    input [31:0] DIADI;
    input [31:0] DIBDI;
    input [3:0] DIPADIP;
    input [3:0] DIPBDIP;
    input [3:0] WEA;
    input [7:0] WEBWE;

    wire [3:0] dangle_out4;
    wire [31:0] dangle_out32;
    wire [7:0] dangle_out8;
    wire [63:0] dangle_out64;
    
    
    // special handle for sdp width = 72 and < 72
    localparam init_sdp = (READ_WIDTH_A == 72) ? {INIT_B[35:32],INIT_A[35:32],INIT_B[31:0],INIT_A[31:0]} : {INIT_B, INIT_A};
    localparam srval_sdp = (READ_WIDTH_A == 72) ? {SRVAL_B[35:32],SRVAL_A[35:32],SRVAL_B[31:0],SRVAL_A[31:0]} : {SRVAL_B, SRVAL_A};

    
    generate
        case (RAM_MODE)
        
        "TDP" : begin
    
        X_RB36_INTERNAL_VLOG #(.RAM_MODE(RAM_MODE),
                  .INIT_A(INIT_A),
                  .INIT_B(INIT_B),
                  .INIT_FILE(INIT_FILE),
                  .SRVAL_A(SRVAL_A),
                  .SRVAL_B(SRVAL_B),
                                  .RDADDR_COLLISION_HWCONFIG(RDADDR_COLLISION_HWCONFIG),
                  .READ_WIDTH_A(READ_WIDTH_A),
                  .READ_WIDTH_B(READ_WIDTH_B),
                  .WRITE_WIDTH_A(WRITE_WIDTH_A),
                  .WRITE_WIDTH_B(WRITE_WIDTH_B),
                  .WRITE_MODE_A(WRITE_MODE_A),
                  .WRITE_MODE_B(WRITE_MODE_B),
                  .RAM_EXTENSION_A(RAM_EXTENSION_A),
                  .RAM_EXTENSION_B(RAM_EXTENSION_B),
                  .SETUP_ALL(SETUP_ALL),
                  .SETUP_READ_FIRST(SETUP_READ_FIRST),
                  .SIM_COLLISION_CHECK(SIM_COLLISION_CHECK),
                  .EN_ECC_READ(EN_ECC_READ),
                  .EN_ECC_WRITE(EN_ECC_WRITE),
                  .DOA_REG(DOA_REG),
                  .DOB_REG(DOB_REG),
                  .RSTREG_PRIORITY_A(RSTREG_PRIORITY_A),
                  .RSTREG_PRIORITY_B(RSTREG_PRIORITY_B),
                  .INIT_00(INIT_00),
                  .INIT_01(INIT_01),
                  .INIT_02(INIT_02),
                  .INIT_03(INIT_03),
                  .INIT_04(INIT_04),
                  .INIT_05(INIT_05),
                  .INIT_06(INIT_06),
                  .INIT_07(INIT_07),
                  .INIT_08(INIT_08),
                  .INIT_09(INIT_09),
                  .INIT_0A(INIT_0A),
                  .INIT_0B(INIT_0B),
                  .INIT_0C(INIT_0C),
                  .INIT_0D(INIT_0D),
                  .INIT_0E(INIT_0E),
                  .INIT_0F(INIT_0F),
                  .INIT_10(INIT_10),
                  .INIT_11(INIT_11),
                  .INIT_12(INIT_12),
                  .INIT_13(INIT_13),
                  .INIT_14(INIT_14),
                  .INIT_15(INIT_15),
                  .INIT_16(INIT_16),
                  .INIT_17(INIT_17),
                  .INIT_18(INIT_18),
                  .INIT_19(INIT_19),
                  .INIT_1A(INIT_1A),
                  .INIT_1B(INIT_1B),
                  .INIT_1C(INIT_1C),
                  .INIT_1D(INIT_1D),
                  .INIT_1E(INIT_1E),
                  .INIT_1F(INIT_1F),
                  .INIT_20(INIT_20),
                  .INIT_21(INIT_21),
                  .INIT_22(INIT_22),
                  .INIT_23(INIT_23),
                  .INIT_24(INIT_24),
                  .INIT_25(INIT_25),
                  .INIT_26(INIT_26),
                  .INIT_27(INIT_27),
                  .INIT_28(INIT_28),
                  .INIT_29(INIT_29),
                  .INIT_2A(INIT_2A),
                  .INIT_2B(INIT_2B),
                  .INIT_2C(INIT_2C),
                  .INIT_2D(INIT_2D),
                  .INIT_2E(INIT_2E),
                  .INIT_2F(INIT_2F),
                  .INIT_30(INIT_30),
                  .INIT_31(INIT_31),
                  .INIT_32(INIT_32),
                  .INIT_33(INIT_33),
                  .INIT_34(INIT_34),
                  .INIT_35(INIT_35),
                  .INIT_36(INIT_36),
                  .INIT_37(INIT_37),
                  .INIT_38(INIT_38),
                  .INIT_39(INIT_39),
                  .INIT_3A(INIT_3A),
                  .INIT_3B(INIT_3B),
                  .INIT_3C(INIT_3C),
                  .INIT_3D(INIT_3D),
                  .INIT_3E(INIT_3E),
                  .INIT_3F(INIT_3F),
                  .INIT_40(INIT_40),
                  .INIT_41(INIT_41),
                  .INIT_42(INIT_42),
                  .INIT_43(INIT_43),
                  .INIT_44(INIT_44),
                  .INIT_45(INIT_45),
                  .INIT_46(INIT_46),
                  .INIT_47(INIT_47),
                  .INIT_48(INIT_48),
                  .INIT_49(INIT_49),
                  .INIT_4A(INIT_4A),
                  .INIT_4B(INIT_4B),
                  .INIT_4C(INIT_4C),
                  .INIT_4D(INIT_4D),
                  .INIT_4E(INIT_4E),
                  .INIT_4F(INIT_4F),
                  .INIT_50(INIT_50),
                  .INIT_51(INIT_51),
                  .INIT_52(INIT_52),
                  .INIT_53(INIT_53),
                  .INIT_54(INIT_54),
                  .INIT_55(INIT_55),
                  .INIT_56(INIT_56),
                  .INIT_57(INIT_57),
                  .INIT_58(INIT_58),
                  .INIT_59(INIT_59),
                  .INIT_5A(INIT_5A),
                  .INIT_5B(INIT_5B),
                  .INIT_5C(INIT_5C),
                  .INIT_5D(INIT_5D),
                  .INIT_5E(INIT_5E),
                  .INIT_5F(INIT_5F),
                  .INIT_60(INIT_60),
                  .INIT_61(INIT_61),
                  .INIT_62(INIT_62),
                  .INIT_63(INIT_63),
                  .INIT_64(INIT_64),
                  .INIT_65(INIT_65),
                  .INIT_66(INIT_66),
                  .INIT_67(INIT_67),
                  .INIT_68(INIT_68),
                  .INIT_69(INIT_69),
                  .INIT_6A(INIT_6A),
                  .INIT_6B(INIT_6B),
                  .INIT_6C(INIT_6C),
                  .INIT_6D(INIT_6D),
                  .INIT_6E(INIT_6E),
                  .INIT_6F(INIT_6F),
                  .INIT_70(INIT_70),
                  .INIT_71(INIT_71),
                  .INIT_72(INIT_72),
                  .INIT_73(INIT_73),
                  .INIT_74(INIT_74),
                  .INIT_75(INIT_75),
                  .INIT_76(INIT_76),
                  .INIT_77(INIT_77),
                  .INIT_78(INIT_78),
                  .INIT_79(INIT_79),
                  .INIT_7A(INIT_7A),
                  .INIT_7B(INIT_7B),
                  .INIT_7C(INIT_7C),
                  .INIT_7D(INIT_7D),
                  .INIT_7E(INIT_7E),
                  .INIT_7F(INIT_7F),
                  .INITP_00(INITP_00),
                  .INITP_01(INITP_01),
                  .INITP_02(INITP_02),
                  .INITP_03(INITP_03),
                  .INITP_04(INITP_04),
                  .INITP_05(INITP_05),
                  .INITP_06(INITP_06),
                  .INITP_07(INITP_07),
                  .INITP_08(INITP_08),
                  .INITP_09(INITP_09),
                  .INITP_0A(INITP_0A),
                  .INITP_0B(INITP_0B),
                  .INITP_0C(INITP_0C),
                  .INITP_0D(INITP_0D),
                  .INITP_0E(INITP_0E),
                  .INITP_0F(INITP_0F))
        
                  INT_RAMB_TDP (.ADDRA(ADDRARDADDR), 
                        .ADDRB(ADDRBWRADDR), 
                        .CASCADEINA(CASCADEINA), 
                        .CASCADEINB(CASCADEINB), 
                        .CASCADEOUTA(CASCADEOUTA), 
                        .CASCADEOUTB(CASCADEOUTB), 
                        .CLKA(CLKARDCLK), 
                        .CLKB(CLKBWRCLK), 
                        .DBITERR(DBITERR), 
                        .DIA({32'b0,DIADI}), 
                        .DIB({32'b0,DIBDI}), 
                        .DIPA({4'b0,DIPADIP}), 
                        .DIPB({4'b0,DIPBDIP}), 
                        .DOA({dangle_out32,DOADO}), 
                        .DOB(DOBDO), 
                        .DOPA({dangle_out4,DOPADOP}), 
                        .DOPB(DOPBDOP), 
                        .ECCPARITY(ECCPARITY), 
                        .ENA(ENARDEN), 
                        .ENB(ENBWREN), 
                        .INJECTDBITERR(1'b0),
                        .INJECTSBITERR(1'b0), 
                        .RDADDRECC(RDADDRECC), 
                        .REGCEA(REGCEAREGCE), 
                        .REGCEB(REGCEB), 
                        .RSTRAMA(RSTRAMARSTRAM), 
                        .RSTRAMB(RSTRAMB), 
                        .RSTREGA(RSTREGARSTREG), 
                        .RSTREGB(RSTREGB), 
                        .SBITERR(SBITERR), 
                        .WEA({2{WEA}}), 
                        .WEB(WEBWE));

        end // case: "TDP"
        "SDP" : begin

        if (WRITE_WIDTH_B == 72) begin
            
            X_RB36_INTERNAL_VLOG #(.RAM_MODE(RAM_MODE),
                  .INIT_A(init_sdp),
                  .INIT_B(init_sdp),
                  .INIT_FILE(INIT_FILE),
                  .SRVAL_A(srval_sdp),
                  .SRVAL_B(srval_sdp),
                                  .RDADDR_COLLISION_HWCONFIG(RDADDR_COLLISION_HWCONFIG),
                  .READ_WIDTH_A(READ_WIDTH_A),
                  .READ_WIDTH_B(READ_WIDTH_B),
                  .WRITE_WIDTH_A(WRITE_WIDTH_A),
                  .WRITE_WIDTH_B(WRITE_WIDTH_B),
                  .WRITE_MODE_A(WRITE_MODE_A),
                  .WRITE_MODE_B(WRITE_MODE_B),
                  .RAM_EXTENSION_A(RAM_EXTENSION_A),
                  .RAM_EXTENSION_B(RAM_EXTENSION_B),
                  .SETUP_ALL(SETUP_ALL),
                  .SETUP_READ_FIRST(SETUP_READ_FIRST),
                  .SIM_COLLISION_CHECK(SIM_COLLISION_CHECK),
                  .EN_ECC_READ(EN_ECC_READ),
                  .EN_ECC_WRITE(EN_ECC_WRITE),
                  .DOA_REG(DOA_REG),
                  .DOB_REG(DOB_REG),
                  .RSTREG_PRIORITY_A(RSTREG_PRIORITY_A),
                  .RSTREG_PRIORITY_B(RSTREG_PRIORITY_B),
                  .INIT_00(INIT_00),
                  .INIT_01(INIT_01),
                  .INIT_02(INIT_02),
                  .INIT_03(INIT_03),
                  .INIT_04(INIT_04),
                  .INIT_05(INIT_05),
                  .INIT_06(INIT_06),
                  .INIT_07(INIT_07),
                  .INIT_08(INIT_08),
                  .INIT_09(INIT_09),
                  .INIT_0A(INIT_0A),
                  .INIT_0B(INIT_0B),
                  .INIT_0C(INIT_0C),
                  .INIT_0D(INIT_0D),
                  .INIT_0E(INIT_0E),
                  .INIT_0F(INIT_0F),
                  .INIT_10(INIT_10),
                  .INIT_11(INIT_11),
                  .INIT_12(INIT_12),
                  .INIT_13(INIT_13),
                  .INIT_14(INIT_14),
                  .INIT_15(INIT_15),
                  .INIT_16(INIT_16),
                  .INIT_17(INIT_17),
                  .INIT_18(INIT_18),
                  .INIT_19(INIT_19),
                  .INIT_1A(INIT_1A),
                  .INIT_1B(INIT_1B),
                  .INIT_1C(INIT_1C),
                  .INIT_1D(INIT_1D),
                  .INIT_1E(INIT_1E),
                  .INIT_1F(INIT_1F),
                  .INIT_20(INIT_20),
                  .INIT_21(INIT_21),
                  .INIT_22(INIT_22),
                  .INIT_23(INIT_23),
                  .INIT_24(INIT_24),
                  .INIT_25(INIT_25),
                  .INIT_26(INIT_26),
                  .INIT_27(INIT_27),
                  .INIT_28(INIT_28),
                  .INIT_29(INIT_29),
                  .INIT_2A(INIT_2A),
                  .INIT_2B(INIT_2B),
                  .INIT_2C(INIT_2C),
                  .INIT_2D(INIT_2D),
                  .INIT_2E(INIT_2E),
                  .INIT_2F(INIT_2F),
                  .INIT_30(INIT_30),
                  .INIT_31(INIT_31),
                  .INIT_32(INIT_32),
                  .INIT_33(INIT_33),
                  .INIT_34(INIT_34),
                  .INIT_35(INIT_35),
                  .INIT_36(INIT_36),
                  .INIT_37(INIT_37),
                  .INIT_38(INIT_38),
                  .INIT_39(INIT_39),
                  .INIT_3A(INIT_3A),
                  .INIT_3B(INIT_3B),
                  .INIT_3C(INIT_3C),
                  .INIT_3D(INIT_3D),
                  .INIT_3E(INIT_3E),
                  .INIT_3F(INIT_3F),
                  .INIT_40(INIT_40),
                  .INIT_41(INIT_41),
                  .INIT_42(INIT_42),
                  .INIT_43(INIT_43),
                  .INIT_44(INIT_44),
                  .INIT_45(INIT_45),
                  .INIT_46(INIT_46),
                  .INIT_47(INIT_47),
                  .INIT_48(INIT_48),
                  .INIT_49(INIT_49),
                  .INIT_4A(INIT_4A),
                  .INIT_4B(INIT_4B),
                  .INIT_4C(INIT_4C),
                  .INIT_4D(INIT_4D),
                  .INIT_4E(INIT_4E),
                  .INIT_4F(INIT_4F),
                  .INIT_50(INIT_50),
                  .INIT_51(INIT_51),
                  .INIT_52(INIT_52),
                  .INIT_53(INIT_53),
                  .INIT_54(INIT_54),
                  .INIT_55(INIT_55),
                  .INIT_56(INIT_56),
                  .INIT_57(INIT_57),
                  .INIT_58(INIT_58),
                  .INIT_59(INIT_59),
                  .INIT_5A(INIT_5A),
                  .INIT_5B(INIT_5B),
                  .INIT_5C(INIT_5C),
                  .INIT_5D(INIT_5D),
                  .INIT_5E(INIT_5E),
                  .INIT_5F(INIT_5F),
                  .INIT_60(INIT_60),
                  .INIT_61(INIT_61),
                  .INIT_62(INIT_62),
                  .INIT_63(INIT_63),
                  .INIT_64(INIT_64),
                  .INIT_65(INIT_65),
                  .INIT_66(INIT_66),
                  .INIT_67(INIT_67),
                  .INIT_68(INIT_68),
                  .INIT_69(INIT_69),
                  .INIT_6A(INIT_6A),
                  .INIT_6B(INIT_6B),
                  .INIT_6C(INIT_6C),
                  .INIT_6D(INIT_6D),
                  .INIT_6E(INIT_6E),
                  .INIT_6F(INIT_6F),
                  .INIT_70(INIT_70),
                  .INIT_71(INIT_71),
                  .INIT_72(INIT_72),
                  .INIT_73(INIT_73),
                  .INIT_74(INIT_74),
                  .INIT_75(INIT_75),
                  .INIT_76(INIT_76),
                  .INIT_77(INIT_77),
                  .INIT_78(INIT_78),
                  .INIT_79(INIT_79),
                  .INIT_7A(INIT_7A),
                  .INIT_7B(INIT_7B),
                  .INIT_7C(INIT_7C),
                  .INIT_7D(INIT_7D),
                  .INIT_7E(INIT_7E),
                  .INIT_7F(INIT_7F),
                  .INITP_00(INITP_00),
                  .INITP_01(INITP_01),
                  .INITP_02(INITP_02),
                  .INITP_03(INITP_03),
                  .INITP_04(INITP_04),
                  .INITP_05(INITP_05),
                  .INITP_06(INITP_06),
                  .INITP_07(INITP_07),
                  .INITP_08(INITP_08),
                  .INITP_09(INITP_09),
                  .INITP_0A(INITP_0A),
                  .INITP_0B(INITP_0B),
                  .INITP_0C(INITP_0C),
                  .INITP_0D(INITP_0D),
                  .INITP_0E(INITP_0E),
                  .INITP_0F(INITP_0F))
        
                  INT_RAMB_SDP (.ADDRA(ADDRARDADDR), 
                        .ADDRB(ADDRBWRADDR), 
                        .CASCADEINA(CASCADEINA), 
                        .CASCADEINB(CASCADEINB), 
                        .CASCADEOUTA(CASCADEOUTA), 
                        .CASCADEOUTB(CASCADEOUTB), 
                        .CLKA(CLKARDCLK), 
                        .CLKB(CLKBWRCLK), 
                        .DBITERR(DBITERR), 
                        .DIA(64'b0), 
                        .DIB({DIBDI,DIADI}), 
                        .DIPA(8'b0), 
                        .DIPB({DIPBDIP,DIPADIP}), 
                        .DOA({DOBDO,DOADO}), 
                        .DOB(dangle_out64), 
                        .DOPA({DOPBDOP,DOPADOP}), 
                        .DOPB(dangle_out8), 
                        .ECCPARITY(ECCPARITY), 
                        .ENA(ENARDEN), 
                        .ENB(ENBWREN), 
                        .INJECTDBITERR(INJECTDBITERR),
                        .INJECTSBITERR(INJECTSBITERR), 
                        .RDADDRECC(RDADDRECC), 
                        .REGCEA(REGCEAREGCE), 
                        .REGCEB(REGCEB), 
                        .RSTRAMA(RSTRAMARSTRAM), 
                        .RSTRAMB(RSTRAMB), 
                        .RSTREGA(RSTREGARSTREG), 
                        .RSTREGB(RSTREGB), 
                        .SBITERR(SBITERR), 
                        .WEA(8'b0), 
                        .WEB(WEBWE));

        end // if (WRITE_WIDTH_B == 72)
        else begin

            X_RB36_INTERNAL_VLOG #(.RAM_MODE(RAM_MODE),
                  .INIT_A(init_sdp),
                  .INIT_B(init_sdp),
                  .INIT_FILE(INIT_FILE),
                  .SRVAL_A(srval_sdp),
                  .SRVAL_B(srval_sdp),
                                  .RDADDR_COLLISION_HWCONFIG(RDADDR_COLLISION_HWCONFIG),
                  .READ_WIDTH_A(READ_WIDTH_A),
                  .READ_WIDTH_B(READ_WIDTH_B),
                  .WRITE_WIDTH_A(WRITE_WIDTH_A),
                  .WRITE_WIDTH_B(WRITE_WIDTH_B),
                  .WRITE_MODE_A(WRITE_MODE_A),
                  .WRITE_MODE_B(WRITE_MODE_B),
                  .RAM_EXTENSION_A(RAM_EXTENSION_A),
                  .RAM_EXTENSION_B(RAM_EXTENSION_B),
                  .SETUP_ALL(SETUP_ALL),
                  .SETUP_READ_FIRST(SETUP_READ_FIRST),
                  .SIM_COLLISION_CHECK(SIM_COLLISION_CHECK),
                  .EN_ECC_READ(EN_ECC_READ),
                  .EN_ECC_WRITE(EN_ECC_WRITE),
                  .DOA_REG(DOA_REG),
                  .DOB_REG(DOB_REG),
                  .RSTREG_PRIORITY_A(RSTREG_PRIORITY_A),
                  .RSTREG_PRIORITY_B(RSTREG_PRIORITY_B),
                  .INIT_00(INIT_00),
                  .INIT_01(INIT_01),
                  .INIT_02(INIT_02),
                  .INIT_03(INIT_03),
                  .INIT_04(INIT_04),
                  .INIT_05(INIT_05),
                  .INIT_06(INIT_06),
                  .INIT_07(INIT_07),
                  .INIT_08(INIT_08),
                  .INIT_09(INIT_09),
                  .INIT_0A(INIT_0A),
                  .INIT_0B(INIT_0B),
                  .INIT_0C(INIT_0C),
                  .INIT_0D(INIT_0D),
                  .INIT_0E(INIT_0E),
                  .INIT_0F(INIT_0F),
                  .INIT_10(INIT_10),
                  .INIT_11(INIT_11),
                  .INIT_12(INIT_12),
                  .INIT_13(INIT_13),
                  .INIT_14(INIT_14),
                  .INIT_15(INIT_15),
                  .INIT_16(INIT_16),
                  .INIT_17(INIT_17),
                  .INIT_18(INIT_18),
                  .INIT_19(INIT_19),
                  .INIT_1A(INIT_1A),
                  .INIT_1B(INIT_1B),
                  .INIT_1C(INIT_1C),
                  .INIT_1D(INIT_1D),
                  .INIT_1E(INIT_1E),
                  .INIT_1F(INIT_1F),
                  .INIT_20(INIT_20),
                  .INIT_21(INIT_21),
                  .INIT_22(INIT_22),
                  .INIT_23(INIT_23),
                  .INIT_24(INIT_24),
                  .INIT_25(INIT_25),
                  .INIT_26(INIT_26),
                  .INIT_27(INIT_27),
                  .INIT_28(INIT_28),
                  .INIT_29(INIT_29),
                  .INIT_2A(INIT_2A),
                  .INIT_2B(INIT_2B),
                  .INIT_2C(INIT_2C),
                  .INIT_2D(INIT_2D),
                  .INIT_2E(INIT_2E),
                  .INIT_2F(INIT_2F),
                  .INIT_30(INIT_30),
                  .INIT_31(INIT_31),
                  .INIT_32(INIT_32),
                  .INIT_33(INIT_33),
                  .INIT_34(INIT_34),
                  .INIT_35(INIT_35),
                  .INIT_36(INIT_36),
                  .INIT_37(INIT_37),
                  .INIT_38(INIT_38),
                  .INIT_39(INIT_39),
                  .INIT_3A(INIT_3A),
                  .INIT_3B(INIT_3B),
                  .INIT_3C(INIT_3C),
                  .INIT_3D(INIT_3D),
                  .INIT_3E(INIT_3E),
                  .INIT_3F(INIT_3F),
                  .INIT_40(INIT_40),
                  .INIT_41(INIT_41),
                  .INIT_42(INIT_42),
                  .INIT_43(INIT_43),
                  .INIT_44(INIT_44),
                  .INIT_45(INIT_45),
                  .INIT_46(INIT_46),
                  .INIT_47(INIT_47),
                  .INIT_48(INIT_48),
                  .INIT_49(INIT_49),
                  .INIT_4A(INIT_4A),
                  .INIT_4B(INIT_4B),
                  .INIT_4C(INIT_4C),
                  .INIT_4D(INIT_4D),
                  .INIT_4E(INIT_4E),
                  .INIT_4F(INIT_4F),
                  .INIT_50(INIT_50),
                  .INIT_51(INIT_51),
                  .INIT_52(INIT_52),
                  .INIT_53(INIT_53),
                  .INIT_54(INIT_54),
                  .INIT_55(INIT_55),
                  .INIT_56(INIT_56),
                  .INIT_57(INIT_57),
                  .INIT_58(INIT_58),
                  .INIT_59(INIT_59),
                  .INIT_5A(INIT_5A),
                  .INIT_5B(INIT_5B),
                  .INIT_5C(INIT_5C),
                  .INIT_5D(INIT_5D),
                  .INIT_5E(INIT_5E),
                  .INIT_5F(INIT_5F),
                  .INIT_60(INIT_60),
                  .INIT_61(INIT_61),
                  .INIT_62(INIT_62),
                  .INIT_63(INIT_63),
                  .INIT_64(INIT_64),
                  .INIT_65(INIT_65),
                  .INIT_66(INIT_66),
                  .INIT_67(INIT_67),
                  .INIT_68(INIT_68),
                  .INIT_69(INIT_69),
                  .INIT_6A(INIT_6A),
                  .INIT_6B(INIT_6B),
                  .INIT_6C(INIT_6C),
                  .INIT_6D(INIT_6D),
                  .INIT_6E(INIT_6E),
                  .INIT_6F(INIT_6F),
                  .INIT_70(INIT_70),
                  .INIT_71(INIT_71),
                  .INIT_72(INIT_72),
                  .INIT_73(INIT_73),
                  .INIT_74(INIT_74),
                  .INIT_75(INIT_75),
                  .INIT_76(INIT_76),
                  .INIT_77(INIT_77),
                  .INIT_78(INIT_78),
                  .INIT_79(INIT_79),
                  .INIT_7A(INIT_7A),
                  .INIT_7B(INIT_7B),
                  .INIT_7C(INIT_7C),
                  .INIT_7D(INIT_7D),
                  .INIT_7E(INIT_7E),
                  .INIT_7F(INIT_7F),
                  .INITP_00(INITP_00),
                  .INITP_01(INITP_01),
                  .INITP_02(INITP_02),
                  .INITP_03(INITP_03),
                  .INITP_04(INITP_04),
                  .INITP_05(INITP_05),
                  .INITP_06(INITP_06),
                  .INITP_07(INITP_07),
                  .INITP_08(INITP_08),
                  .INITP_09(INITP_09),
                  .INITP_0A(INITP_0A),
                  .INITP_0B(INITP_0B),
                  .INITP_0C(INITP_0C),
                  .INITP_0D(INITP_0D),
                  .INITP_0E(INITP_0E),
                  .INITP_0F(INITP_0F))
        
                  INT_RAMB_SDP (.ADDRA(ADDRARDADDR), 
                        .ADDRB(ADDRBWRADDR), 
                        .CASCADEINA(CASCADEINA), 
                        .CASCADEINB(CASCADEINB), 
                        .CASCADEOUTA(CASCADEOUTA), 
                        .CASCADEOUTB(CASCADEOUTB), 
                        .CLKA(CLKARDCLK), 
                        .CLKB(CLKBWRCLK), 
                        .DBITERR(DBITERR), 
                        .DIA(64'b0), 
                        .DIB({32'b0,DIBDI}), 
                        .DIPA(8'b0), 
                        .DIPB({4'b0,DIPBDIP}), 
                        .DOA({DOBDO,DOADO}), 
                        .DOB(dangle_out64), 
                        .DOPA({DOPBDOP,DOPADOP}), 
                        .DOPB(dangle_out8), 
                        .ECCPARITY(ECCPARITY), 
                        .ENA(ENARDEN), 
                        .ENB(ENBWREN), 
                        .INJECTDBITERR(INJECTDBITERR),
                        .INJECTSBITERR(INJECTSBITERR), 
                        .RDADDRECC(RDADDRECC), 
                        .REGCEA(REGCEAREGCE), 
                        .REGCEB(REGCEB), 
                        .RSTRAMA(RSTRAMARSTRAM), 
                        .RSTRAMB(RSTRAMB), 
                        .RSTREGA(RSTREGARSTREG), 
                        .RSTREGB(RSTREGB), 
                        .SBITERR(SBITERR), 
                        .WEA(8'b0), 
                        .WEB(WEBWE));

        end // else: !if(WRITE_WIDTH_B == 72)
            
        end // case: "SDP"
        
    endcase // case(RAM_MODE)
    endgenerate
    
           
endmodule // X_RAMB36E1


// WARNING !!!: The following model is not an user primitive. 
//              Please do not modify any part of it. X_RAMB36E1 may not work properly if do so.
//
`timescale 1 ps/1 ps

module X_RB36_INTERNAL_VLOG (CASCADEOUTA, CASCADEOUTB, DBITERR, DOA, DOB, DOPA, DOPB, ECCPARITY, RDADDRECC, SBITERR, 
             ADDRA, ADDRB, CASCADEINA, CASCADEINB, CLKA, CLKB, DIA, DIB, DIPA, DIPB, ENA, ENB, INJECTDBITERR, INJECTSBITERR, REGCEA, REGCEB, RSTRAMA, RSTRAMB, RSTREGA, RSTREGB, WEA, WEB);

    output CASCADEOUTA;
    output CASCADEOUTB;
    output SBITERR, DBITERR;
    output [8:0] RDADDRECC;
    output [63:0] DOA;
    output [63:0] DOB;
    output [7:0] DOPA;
    output [7:0] DOPB;
    output [7:0] ECCPARITY;
    
    input ENA, CLKA, CASCADEINA, REGCEA;
    input ENB, CLKB, CASCADEINB, REGCEB;
    input RSTRAMA, RSTRAMB;
    input RSTREGA, RSTREGB;
    input INJECTDBITERR, INJECTSBITERR;
    input [15:0] ADDRA;
    input [15:0] ADDRB;
    input [63:0] DIA;
    input [63:0] DIB;
    input [7:0] DIPA;
    input [7:0] DIPB;
    input [7:0] WEA;
    input [7:0] WEB;

    parameter DOA_REG = 0;
    parameter DOB_REG = 0;
    parameter EN_ECC_READ = "FALSE";
    parameter EN_ECC_WRITE = "FALSE";
    parameter INIT_A = 72'h0;
    parameter INIT_B = 72'h0;
    parameter RAM_EXTENSION_A = "NONE";
    parameter RAM_EXTENSION_B = "NONE";
    parameter RAM_MODE = "TDP";
    parameter RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE";
    parameter READ_WIDTH_A = 0;
    parameter READ_WIDTH_B = 0;
    parameter RSTREG_PRIORITY_A = "RSTREG";
    parameter RSTREG_PRIORITY_B = "RSTREG";
    parameter SETUP_ALL = 1000;
    parameter SETUP_READ_FIRST = 3000;
    parameter SIM_COLLISION_CHECK = "ALL";
    parameter SRVAL_A = 72'h0;
    parameter SRVAL_B = 72'h0;
    parameter WRITE_MODE_A = "WRITE_FIRST";
    parameter WRITE_MODE_B = "WRITE_FIRST";
    parameter WRITE_WIDTH_A = 0;
    parameter WRITE_WIDTH_B = 0;
    parameter INIT_FILE = "NONE";
    
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
    parameter INIT_40 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_41 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_42 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_43 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_44 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_45 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_46 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_47 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_48 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_49 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_4F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_50 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_51 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_52 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_53 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_54 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_55 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_56 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_57 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_58 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_59 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_5F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_60 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_61 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_62 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_63 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_64 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_65 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_66 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_67 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_68 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_69 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_6F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_70 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_71 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_72 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_73 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_74 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_75 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_76 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_77 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_78 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_79 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_7F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;

// xilinx_internal_parameter on
    // WARNING !!!: This model may not work properly if the following parameters are changed.
    parameter BRAM_SIZE = 36;
// xilinx_internal_parameter off


    // Determine memory size
    localparam widest_width = (WRITE_WIDTH_A >= WRITE_WIDTH_B && WRITE_WIDTH_A >= READ_WIDTH_A && 
                   WRITE_WIDTH_A >= READ_WIDTH_B) ? WRITE_WIDTH_A : 
                  (WRITE_WIDTH_B >= WRITE_WIDTH_A && WRITE_WIDTH_B >= READ_WIDTH_A && 
                   WRITE_WIDTH_B >= READ_WIDTH_B) ? WRITE_WIDTH_B :
                  (READ_WIDTH_A >= WRITE_WIDTH_A && READ_WIDTH_A >= WRITE_WIDTH_B && 
                   READ_WIDTH_A >= READ_WIDTH_B) ? READ_WIDTH_A :
                  (READ_WIDTH_B >= WRITE_WIDTH_A && READ_WIDTH_B >= WRITE_WIDTH_B && 
                   READ_WIDTH_B >= READ_WIDTH_A) ? READ_WIDTH_B : 64;

    localparam wa_width = (WRITE_WIDTH_A == 1) ? 1 : (WRITE_WIDTH_A == 2) ? 2 : (WRITE_WIDTH_A == 4) ? 4 :
              (WRITE_WIDTH_A == 9) ? 8 : (WRITE_WIDTH_A == 18) ? 16 : (WRITE_WIDTH_A == 36) ? 32 :
              (WRITE_WIDTH_A == 72) ? 64 : 64;
    
    localparam wb_width = (WRITE_WIDTH_B == 1) ? 1 : (WRITE_WIDTH_B == 2) ? 2 : (WRITE_WIDTH_B == 4) ? 4 :
              (WRITE_WIDTH_B == 9) ? 8 : (WRITE_WIDTH_B == 18) ? 16 : (WRITE_WIDTH_B == 36) ? 32 :
              (WRITE_WIDTH_B == 72) ? 64 : 64;


    localparam wa_widthp = (WRITE_WIDTH_A == 9) ? 1 : (WRITE_WIDTH_A == 18) ? 2 : (WRITE_WIDTH_A == 36) ? 4 :
               (WRITE_WIDTH_A == 72) ? 8 : 8;
    
    localparam wb_widthp = (WRITE_WIDTH_B == 9) ? 1 : (WRITE_WIDTH_B == 18) ? 2 : (WRITE_WIDTH_B == 36) ? 4 :
               (WRITE_WIDTH_B == 72) ? 8 : 8;

    
    localparam ra_width = (READ_WIDTH_A == 1) ? 1 : (READ_WIDTH_A == 2) ? 2 : (READ_WIDTH_A == 4) ? 4 :
              (READ_WIDTH_A == 9) ? 8 : (READ_WIDTH_A == 18) ? 16 : (READ_WIDTH_A == 36) ? 32 :
              (READ_WIDTH_A == 72) ? 64 : 64;
    
    localparam rb_width = (READ_WIDTH_B == 1) ? 1 : (READ_WIDTH_B == 2) ? 2 : (READ_WIDTH_B == 4) ? 4 :
              (READ_WIDTH_B == 9) ? 8 : (READ_WIDTH_B == 18) ? 16 : (READ_WIDTH_B == 36) ? 32 :
              (READ_WIDTH_B == 72) ? 64 : 64;


    localparam ra_widthp = (READ_WIDTH_A == 9) ? 1 : (READ_WIDTH_A == 18) ? 2 : (READ_WIDTH_A == 36) ? 4 :
               (READ_WIDTH_A == 72) ? 8 : 8;
    
    localparam rb_widthp = (READ_WIDTH_B == 9) ? 1 : (READ_WIDTH_B == 18) ? 2 : (READ_WIDTH_B == 36) ? 4 :
               (READ_WIDTH_B == 72) ? 8 : 8;
    
    localparam col_addr_lsb_same_clk = (widest_width == 1) ? 0 : (widest_width == 2) ? 1 : (widest_width == 4) ? 2 :
                       (widest_width == 9) ? 3 : (widest_width == 18) ? 4 : (widest_width == 36) ? 5 :
                       (widest_width == 72) ? 6 : 0;

    localparam col_addr_lsb = (WRITE_MODE_A == "READ_FIRST" || WRITE_MODE_B == "READ_FIRST") ? 
                  ((BRAM_SIZE == 36) ? 8 : (BRAM_SIZE == 18) ? 7 : col_addr_lsb_same_clk) : col_addr_lsb_same_clk;
    
    localparam width = (widest_width == 1) ? 1 : (widest_width == 2) ? 2 : (widest_width == 4) ? 4 :
               (widest_width == 9) ? 8 : (widest_width == 18) ? 16 : (widest_width == 36) ? 32 :
               (widest_width == 72) ? 64 : 64;    

    localparam widthp = (widest_width == 9) ? 1 : (widest_width == 18) ? 2 : (widest_width == 36) ? 4 :
            (widest_width == 72) ? 8 : 8;


    localparam r_addra_lbit_124 = (READ_WIDTH_A == 1) ? 0 : (READ_WIDTH_A == 2) ? 1 : 
                   (READ_WIDTH_A == 4) ? 2 : (READ_WIDTH_A == 9) ? 3 : 
                   (READ_WIDTH_A == 18) ? 4 : (READ_WIDTH_A == 36) ? 5 : 
                   (READ_WIDTH_A == 72) ? 6 : 10;
    
    localparam r_addrb_lbit_124 = (READ_WIDTH_B == 1) ? 0 : (READ_WIDTH_B == 2) ? 1 : 
                   (READ_WIDTH_B == 4) ? 2 : (READ_WIDTH_B == 9) ? 3 : 
                   (READ_WIDTH_B == 18) ? 4 : (READ_WIDTH_B == 36) ? 5 : 
                   (READ_WIDTH_B == 72) ? 6 : 10;

    localparam addra_lbit_124 = (WRITE_WIDTH_A == 1) ? 0 : (WRITE_WIDTH_A == 2) ? 1 : 
                   (WRITE_WIDTH_A == 4) ? 2 : (WRITE_WIDTH_A == 9) ? 3 : 
                   (WRITE_WIDTH_A == 18) ? 4 : (WRITE_WIDTH_A == 36) ? 5 : 
                   (WRITE_WIDTH_A == 72) ? 6 : 10;
    
    localparam addrb_lbit_124 = (WRITE_WIDTH_B == 1) ? 0 : (WRITE_WIDTH_B == 2) ? 1 : 
                   (WRITE_WIDTH_B == 4) ? 2 : (WRITE_WIDTH_B == 9) ? 3 : 
                   (WRITE_WIDTH_B == 18) ? 4 : (WRITE_WIDTH_B == 36) ? 5 : 
                   (WRITE_WIDTH_B == 72) ? 6 : 10;
                   
    localparam addra_bit_124 = (WRITE_WIDTH_A == 1 && widest_width == 2) ? 0 : (WRITE_WIDTH_A == 1 && widest_width == 4) ? 1 : 
                  (WRITE_WIDTH_A == 1 && widest_width == 9) ? 2 : (WRITE_WIDTH_A == 1 && widest_width == 18) ? 3 :
                  (WRITE_WIDTH_A == 1 && widest_width == 36) ? 4 : (WRITE_WIDTH_A == 1 && widest_width == 72) ? 5 :
                  (WRITE_WIDTH_A == 2 && widest_width == 4) ? 1 : (WRITE_WIDTH_A == 2 && widest_width == 9) ? 2 : 
                  (WRITE_WIDTH_A == 2 && widest_width == 18) ? 3 : (WRITE_WIDTH_A == 2 && widest_width == 36) ? 4 :
                  (WRITE_WIDTH_A == 2 && widest_width == 72) ? 5 : (WRITE_WIDTH_A == 4 && widest_width == 9) ? 2 :
                  (WRITE_WIDTH_A == 4 && widest_width == 18) ? 3 : (WRITE_WIDTH_A == 4 && widest_width == 36) ? 4 : 
                  (WRITE_WIDTH_A == 4 && widest_width == 72) ? 5 : 10;
    
    localparam r_addra_bit_124 = (READ_WIDTH_A == 1 && widest_width == 2) ? 0 : (READ_WIDTH_A == 1 && widest_width == 4) ? 1 : 
                  (READ_WIDTH_A == 1 && widest_width == 9) ? 2 : (READ_WIDTH_A == 1 && widest_width == 18) ? 3 :
                  (READ_WIDTH_A == 1 && widest_width == 36) ? 4 : (READ_WIDTH_A == 1 && widest_width == 72) ? 5 :
                  (READ_WIDTH_A == 2 && widest_width == 4) ? 1 : (READ_WIDTH_A == 2 && widest_width == 9) ? 2 : 
                  (READ_WIDTH_A == 2 && widest_width == 18) ? 3 : (READ_WIDTH_A == 2 && widest_width == 36) ? 4 :
                  (READ_WIDTH_A == 2 && widest_width == 72) ? 5 : (READ_WIDTH_A == 4 && widest_width == 9) ? 2 :
                  (READ_WIDTH_A == 4 && widest_width == 18) ? 3 : (READ_WIDTH_A == 4 && widest_width == 36) ? 4 : 
                  (READ_WIDTH_A == 4 && widest_width == 72) ? 5 : 10;

    localparam addrb_bit_124 = (WRITE_WIDTH_B == 1 && widest_width == 2) ? 0 : (WRITE_WIDTH_B == 1 && widest_width == 4) ? 1 : 
                  (WRITE_WIDTH_B == 1 && widest_width == 9) ? 2 : (WRITE_WIDTH_B == 1 && widest_width == 18) ? 3 :
                  (WRITE_WIDTH_B == 1 && widest_width == 36) ? 4 : (WRITE_WIDTH_B == 1 && widest_width == 72) ? 5 :
                  (WRITE_WIDTH_B == 2 && widest_width == 4) ? 1 : (WRITE_WIDTH_B == 2 && widest_width == 9) ? 2 : 
                  (WRITE_WIDTH_B == 2 && widest_width == 18) ? 3 : (WRITE_WIDTH_B == 2 && widest_width == 36) ? 4 :
                  (WRITE_WIDTH_B == 2 && widest_width == 72) ? 5 : (WRITE_WIDTH_B == 4 && widest_width == 9) ? 2 :
                  (WRITE_WIDTH_B == 4 && widest_width == 18) ? 3 : (WRITE_WIDTH_B == 4 && widest_width == 36) ? 4 : 
                  (WRITE_WIDTH_B == 4 && widest_width == 72) ? 5 : 10;
    
    localparam r_addrb_bit_124 = (READ_WIDTH_B == 1 && widest_width == 2) ? 0 : (READ_WIDTH_B == 1 && widest_width == 4) ? 1 : 
                  (READ_WIDTH_B == 1 && widest_width == 9) ? 2 : (READ_WIDTH_B == 1 && widest_width == 18) ? 3 :
                  (READ_WIDTH_B == 1 && widest_width == 36) ? 4 : (READ_WIDTH_B == 1 && widest_width == 72) ? 5 :
                  (READ_WIDTH_B == 2 && widest_width == 4) ? 1 : (READ_WIDTH_B == 2 && widest_width == 9) ? 2 : 
                  (READ_WIDTH_B == 2 && widest_width == 18) ? 3 : (READ_WIDTH_B == 2 && widest_width == 36) ? 4 :
                  (READ_WIDTH_B == 2 && widest_width == 72) ? 5 : (READ_WIDTH_B == 4 && widest_width == 9) ? 2 :
                  (READ_WIDTH_B == 4 && widest_width == 18) ? 3 : (READ_WIDTH_B == 4 && widest_width == 36) ? 4 : 
                  (READ_WIDTH_B == 4 && widest_width == 72) ? 5 : 10;

    localparam addra_bit_8 = (WRITE_WIDTH_A == 9 && widest_width == 18) ? 3 : (WRITE_WIDTH_A == 9 && widest_width == 36) ? 4 :
                (WRITE_WIDTH_A == 9 && widest_width == 72) ? 5 : 10;
    
    localparam addra_bit_16 = (WRITE_WIDTH_A == 18 && widest_width == 36) ? 4 : (WRITE_WIDTH_A == 18 && widest_width == 72) ? 5 : 10;

    localparam r_addra_bit_8 = (READ_WIDTH_A == 9 && widest_width == 18) ? 3 : (READ_WIDTH_A == 9 && widest_width == 36) ? 4 :
                (READ_WIDTH_A == 9 && widest_width == 72) ? 5 : 10;
    
    localparam r_addra_bit_16 = (READ_WIDTH_A == 18 && widest_width == 36) ? 4 : (READ_WIDTH_A == 18 && widest_width == 72) ? 5 : 10;

    localparam r_addra_bit_32 = (READ_WIDTH_A == 36 && widest_width == 72) ? 5 : 10;

    localparam addrb_bit_8 = (WRITE_WIDTH_B == 9 && widest_width == 18) ? 3 : (WRITE_WIDTH_B == 9 && widest_width == 36) ? 4 :
                (WRITE_WIDTH_B == 9 && widest_width == 72) ? 5 : 10;
    
    localparam addrb_bit_16 = (WRITE_WIDTH_B == 18 && widest_width == 36) ? 4 : (WRITE_WIDTH_B == 18 && widest_width == 72) ? 5 : 10;

    localparam addrb_bit_32 = (WRITE_WIDTH_B == 36 && widest_width == 72) ? 5 : 10;

    localparam r_addrb_bit_8 = (READ_WIDTH_B == 9 && widest_width == 18) ? 3 : (READ_WIDTH_B == 9 && widest_width == 36) ? 4 :
                (READ_WIDTH_B == 9 && widest_width == 72) ? 5 : 10;
    
    localparam r_addrb_bit_16 = (READ_WIDTH_B == 18 && widest_width == 36) ? 4 : (READ_WIDTH_B == 18 && widest_width == 72) ? 5 : 10;

    localparam r_addrb_bit_32 = (READ_WIDTH_B == 36 && widest_width == 72) ? 5 : 10;
    
    localparam mem_size1 = (BRAM_SIZE == 18) ? 16384 : (BRAM_SIZE == 36) ? 32768 : 32768;
    localparam mem_size2 = (BRAM_SIZE == 18) ? 8192 : (BRAM_SIZE == 36) ? 16384 : 16384;
    localparam mem_size4 = (BRAM_SIZE == 18) ? 4096 : (BRAM_SIZE == 36) ? 8192 : 8192;
    localparam mem_size9 = (BRAM_SIZE == 18) ? 2048 : (BRAM_SIZE == 36) ? 4096 : 4096;
    localparam mem_size18 = (BRAM_SIZE == 18) ? 1024 : (BRAM_SIZE == 36) ? 2048 : 2048;
    localparam mem_size36 = (BRAM_SIZE == 18) ? 512 : (BRAM_SIZE == 36) ? 1024 : 1024;
    localparam mem_size72 = (BRAM_SIZE == 18) ? 0 : (BRAM_SIZE == 36) ? 512 : 512;
    
    localparam mem_depth = (widest_width == 1) ? mem_size1 : (widest_width == 2) ? mem_size2 : (widest_width == 4) ? mem_size4 : 
               (widest_width == 9) ? mem_size9 :(widest_width == 18) ? mem_size18 : (widest_width == 36) ? mem_size36 : 
               (widest_width == 72) ? mem_size72 : 32768;
        
    localparam memp_depth = (widest_width == 9) ? mem_size9 :(widest_width == 18) ? mem_size18 : (widest_width == 36) ? mem_size36 : 
                (widest_width == 72) ? mem_size72 : 4096;

    reg [widest_width-1:0] tmp_mem [mem_depth-1:0];
    
    reg [width-1:0] mem [mem_depth-1:0];
    reg [widthp-1:0] memp [memp_depth-1:0];

    reg addra_in_15_reg_bram, addrb_in_15_reg_bram;
    reg addra_in_15_reg, addrb_in_15_reg;
    reg addra_in_15_reg1, addrb_in_15_reg1;
    reg junk1;
    reg [63:0] doa_out = 64'b0, doa_buf = 64'b0, doa_outreg = 64'b0, doa_out_out;
    reg [63:0] dob_out = 32'b0, dob_buf = 32'b0, dob_outreg = 32'b0, dob_out_out;
    reg [7:0] dopb_out = 4'b0, dopb_buf = 4'b0, dopb_outreg = 4'b0, dopb_out_out;
    reg [7:0] dopa_out = 8'b0, dopa_buf = 8'b0, dopa_outreg = 8'b0, dopa_out_out;
    reg [63:0] doa_out_mux = 64'b0, doa_outreg_mux = 64'b0;
    reg [7:0]  dopa_out_mux = 8'b0, dopa_outreg_mux = 8'b0;
    reg [63:0] dob_out_mux = 64'b0, dob_outreg_mux = 64'b0;
    reg [7:0]  dopb_out_mux = 8'b0, dopb_outreg_mux = 8'b0;
    
    reg [7:0] eccparity_out = 8'b0;
    reg [7:0] dopr_ecc, syndrome = 8'b0;
    reg [7:0] dipb_in_ecc;
    reg [71:0] ecc_bit_position;
    reg [7:0] dip_ecc, dip_ecc_col, dipa_in_ecc_corrected;
    reg [63:0] dib_in_ecc, dib_ecc_col, dia_in_ecc_corrected, di_x = 64'bx;
    reg dbiterr_out = 0, sbiterr_out = 0;
    reg dbiterr_outreg = 0, sbiterr_outreg = 0;
    reg dbiterr_out_out = 0, sbiterr_out_out = 0;

    reg [7:0] out_a = 8'b0, out_b = 8'b0, web_tmp;
    reg [15:0] addra_tmp, addrb_tmp;

    reg [8:0] rdaddrecc_out = 9'b0, rdaddrecc_outreg = 9'b0;
    reg [8:0] rdaddrecc_out_out = 9'b0;
    
    wire [63:0] dib_in;
    wire [63:0] dia_in;
    wire [15:0] addra_in, addrb_in;
    wire clka_in, clkb_in;
    wire [7:0] dipb_in;
    wire [7:0] dipa_in;
    wire ena_in, enb_in, regcea_in, regceb_in, rstrama_in, rstramb_in;
    wire [7:0] wea_in;
    wire [7:0] web_in;
    wire cascadeina_in, cascadeinb_in;
    wire injectdbiterr_in, injectsbiterr_in;
    wire rstrega_in, rstregb_in;

    
    assign addra_in = ADDRA;
    assign addrb_in = ADDRB;
    assign clka_in = CLKA;
    assign clkb_in = CLKB;
    
    assign dia_in = DIA;
    assign dib_in = DIB;
    assign dipa_in = DIPA;
    assign dipb_in = DIPB;
    assign DOA = doa_out_out;

    assign DOPA = dopa_out_out;
    assign DOB = dob_out_out;
    assign DOPB = dopb_out_out;

    assign ena_in = ENA;
    assign enb_in = ENB;
    assign regcea_in = REGCEA;
    assign regceb_in = REGCEB;
    assign rstrama_in = RSTRAMA;
    assign rstramb_in = RSTRAMB;
    assign wea_in = WEA;
    assign web_in = WEB;
    assign cascadeina_in = CASCADEINA;
    assign cascadeinb_in = CASCADEINB;
    assign CASCADEOUTA = doa_out_out[0];
    assign CASCADEOUTB = dob_out_out[0];
    assign SBITERR = sbiterr_out_out;
    assign DBITERR = dbiterr_out_out;
    assign ECCPARITY = eccparity_out;
    assign RDADDRECC = rdaddrecc_out_out;
    assign injectdbiterr_in = INJECTDBITERR;
    assign injectsbiterr_in = INJECTSBITERR;
    assign rstrega_in = RSTREGA;
    assign rstregb_in = RSTREGB;


    localparam en_ecc_write_int = (EN_ECC_WRITE == "TRUE") ?  1 : 0;
    localparam en_ecc_read_int = (EN_ECC_READ == "TRUE") ?  1 : 0;
    localparam ram_mode_int = (RAM_MODE == "TDP") ? 1 : 0;  // tdp = 1, sdp = 0
    localparam [1:0] wr_mode_a = (WRITE_MODE_A == "WRITE_FIRST") ? 2'b00 : ((WRITE_MODE_A == "READ_FIRST") ? 2'b01 : 2'b10); //NO_CHANGE = 2'b10
    localparam [1:0] wr_mode_b = (WRITE_MODE_B == "WRITE_FIRST") ? 2'b00 : ((WRITE_MODE_B == "READ_FIRST") ? 2'b01 : 2'b10); //NO_CHANGE = 2'b10
    localparam [1:0] cascade_a = (RAM_EXTENSION_A == "UPPER") ? 2'b11 : ((RAM_EXTENSION_A == "LOWER") ? 2'b01 : 2'b00); // NONE = 2'b00;
    localparam [1:0] cascade_b = (RAM_EXTENSION_B == "UPPER") ? 2'b11 : ((RAM_EXTENSION_B == "LOWER") ? 2'b01 : 2'b00); // NONE = 2'b00;
    localparam rstreg_priority_a_int = (RSTREG_PRIORITY_A == "RSTREG") ? 1 : 0; // REGCE = 0
    localparam rstreg_priority_b_int = (RSTREG_PRIORITY_B == "RSTREG") ? 1 : 0; // REGCE = 0


/******************************************** task and function **************************************/
    
    task task_ram;

    input we;
    input [7:0] di;
    input dip;
    inout [7:0] mem_task;
    inout memp_task;

    begin

        if (we == 1'b1) begin

        mem_task = di;
        
        if (width >= 8)
            memp_task = dip;
        end
    end

    endtask // task_ram

    
    task task_wr_ram_a;

    input [7:0] wea_tmp;
    input [63:0] dia_tmp;
    input [7:0] dipa_tmp;
    input [15:0] addra_tmp;

    begin
        
        case (wa_width)

        1, 2, 4 : begin

                      if (wa_width >= width)
                  task_ram (wea_tmp[0], dia_tmp[wa_width-1:0], 1'b0, mem[addra_tmp[14:addra_lbit_124]], junk1);
                  else
                  task_ram (wea_tmp[0], dia_tmp[wa_width-1:0], 1'b0, mem[addra_tmp[14:addra_bit_124+1]][(addra_tmp[addra_bit_124:addra_lbit_124] * wa_width) +: wa_width], junk1);

                  end
        8 : begin

                if (wa_width >= width)
                task_ram (wea_tmp[0], dia_tmp[7:0], dipa_tmp[0], mem[addra_tmp[14:3]], memp[addra_tmp[14:3]]);
            else
                task_ram (wea_tmp[0], dia_tmp[7:0], dipa_tmp[0], mem[addra_tmp[14:addra_bit_8+1]][(addra_tmp[addra_bit_8:3] * 8) +: 8], memp[addra_tmp[14:addra_bit_8+1]][(addra_tmp[addra_bit_8:3] * 1) +: 1]);

            end
        16 : begin

                 if (wa_width >= width) begin
                 task_ram (wea_tmp[0], dia_tmp[7:0], dipa_tmp[0], mem[addra_tmp[14:4]][0 +: 8], memp[addra_tmp[14:4]][0:0]);
                 task_ram (wea_tmp[1], dia_tmp[15:8], dipa_tmp[1], mem[addra_tmp[14:4]][8 +: 8], memp[addra_tmp[14:4]][1:1]);
             end 
             else begin
                 task_ram (wea_tmp[0], dia_tmp[7:0], dipa_tmp[0], mem[addra_tmp[14:addra_bit_16+1]][(addra_tmp[addra_bit_16:4] * 16) +: 8], memp[addra_tmp[14:addra_bit_16+1]][(addra_tmp[addra_bit_16:4] * 2) +: 1]);
                 task_ram (wea_tmp[1], dia_tmp[15:8], dipa_tmp[1], mem[addra_tmp[14:addra_bit_16+1]][((addra_tmp[addra_bit_16:4] * 16) + 8) +: 8], memp[addra_tmp[14:addra_bit_16+1]][((addra_tmp[addra_bit_16:4] * 2) + 1) +: 1]);
             end // else: !if(wa_width >= wb_width)

            end // case: 16
        32 : begin

                 task_ram (wea_tmp[0], dia_tmp[7:0], dipa_tmp[0], mem[addra_tmp[14:5]][0 +: 8], memp[addra_tmp[14:5]][0:0]);
                 task_ram (wea_tmp[1], dia_tmp[15:8], dipa_tmp[1], mem[addra_tmp[14:5]][8 +: 8], memp[addra_tmp[14:5]][1:1]);
                 task_ram (wea_tmp[2], dia_tmp[23:16], dipa_tmp[2], mem[addra_tmp[14:5]][16 +: 8], memp[addra_tmp[14:5]][2:2]);
                 task_ram (wea_tmp[3], dia_tmp[31:24], dipa_tmp[3], mem[addra_tmp[14:5]][24 +: 8], memp[addra_tmp[14:5]][3:3]);
            
             end // case: 32
        endcase // case(wa_width)
    end
    
    endtask // task_wr_ram_a
    
    
    task task_wr_ram_b;

    input [7:0] web_tmp;
    input [63:0] dib_tmp;
    input [7:0] dipb_tmp;
    input [15:0] addrb_tmp;

    begin
        
        case (wb_width)

        1, 2, 4 : begin

                      if (wb_width >= width)
                  task_ram (web_tmp[0], dib_tmp[wb_width-1:0], 1'b0, mem[addrb_tmp[14:addrb_lbit_124]], junk1);
                  else
                  task_ram (web_tmp[0], dib_tmp[wb_width-1:0], 1'b0, mem[addrb_tmp[14:addrb_bit_124+1]][(addrb_tmp[addrb_bit_124:addrb_lbit_124] * wb_width) +: wb_width], junk1);
                  end
        8 : begin

                if (wb_width >= width)
                task_ram (web_tmp[0], dib_tmp[7:0], dipb_tmp[0], mem[addrb_tmp[14:3]], memp[addrb_tmp[14:3]]);
            else
                task_ram (web_tmp[0], dib_tmp[7:0], dipb_tmp[0], mem[addrb_tmp[14:addrb_bit_8+1]][(addrb_tmp[addrb_bit_8:3] * 8) +: 8], memp[addrb_tmp[14:addrb_bit_8+1]][(addrb_tmp[addrb_bit_8:3] * 1) +: 1]);

            end
        16 : begin

                 if (wb_width >= width) begin
                 task_ram (web_tmp[0], dib_tmp[7:0], dipb_tmp[0], mem[addrb_tmp[14:4]][0 +: 8], memp[addrb_tmp[14:4]][0:0]);
                 task_ram (web_tmp[1], dib_tmp[15:8], dipb_tmp[1], mem[addrb_tmp[14:4]][8 +: 8], memp[addrb_tmp[14:4]][1:1]);
             end 
             else begin
                 task_ram (web_tmp[0], dib_tmp[7:0], dipb_tmp[0], mem[addrb_tmp[14:addrb_bit_16+1]][(addrb_tmp[addrb_bit_16:4] * 16) +: 8], memp[addrb_tmp[14:addrb_bit_16+1]][(addrb_tmp[addrb_bit_16:4] * 2) +: 1]);
                 task_ram (web_tmp[1], dib_tmp[15:8], dipb_tmp[1], mem[addrb_tmp[14:addrb_bit_16+1]][((addrb_tmp[addrb_bit_16:4] * 16) + 8) +: 8], memp[addrb_tmp[14:addrb_bit_16+1]][((addrb_tmp[addrb_bit_16:4] * 2) + 1) +: 1]);
             end

              end // case: 16
        32 : begin
            
                 if (wb_width >= width) begin
                     task_ram (web_tmp[0], dib_tmp[7:0], dipb_tmp[0], mem[addrb_tmp[14:5]][0 +: 8], memp[addrb_tmp[14:5]][0:0]);
                     task_ram (web_tmp[1], dib_tmp[15:8], dipb_tmp[1], mem[addrb_tmp[14:5]][8 +: 8], memp[addrb_tmp[14:5]][1:1]);
                     task_ram (web_tmp[2], dib_tmp[23:16], dipb_tmp[2], mem[addrb_tmp[14:5]][16 +: 8], memp[addrb_tmp[14:5]][2:2]);
                     task_ram (web_tmp[3], dib_tmp[31:24], dipb_tmp[3], mem[addrb_tmp[14:5]][24 +: 8], memp[addrb_tmp[14:5]][3:3]);
             end
             else begin
                 task_ram (web_tmp[0], dib_tmp[7:0], dipb_tmp[0], mem[addrb_tmp[14:addrb_bit_32+1]][(addrb_tmp[addrb_bit_32:5] * 32) +: 8], memp[addrb_tmp[14:addrb_bit_32+1]][(addrb_tmp[addrb_bit_32:5] * 4) +: 1]);
                 task_ram (web_tmp[1], dib_tmp[15:8], dipb_tmp[1], mem[addrb_tmp[14:addrb_bit_32+1]][((addrb_tmp[addrb_bit_32:5] * 32) + 8) +: 8], memp[addrb_tmp[14:addrb_bit_32+1]][((addrb_tmp[addrb_bit_32:5] * 4) + 1) +: 1]);
                 task_ram (web_tmp[2], dib_tmp[23:16], dipb_tmp[2], mem[addrb_tmp[14:addrb_bit_32+1]][((addrb_tmp[addrb_bit_32:5] * 32) + 16) +: 8], memp[addrb_tmp[14:addrb_bit_32+1]][((addrb_tmp[addrb_bit_32:5] * 4) + 2) +: 1]);
                 task_ram (web_tmp[3], dib_tmp[31:24], dipb_tmp[3], mem[addrb_tmp[14:addrb_bit_32+1]][((addrb_tmp[addrb_bit_32:5] * 32) + 24) +: 8], memp[addrb_tmp[14:addrb_bit_32+1]][((addrb_tmp[addrb_bit_32:5] * 4) + 3) +: 1]);
             end // else: !if(wb_width >= width)
                 
             end // case: 32
        64 : begin  // only valid with ECC single bit correction for 64 bits

                 task_ram (web_tmp[0], dib_tmp[7:0], dipb_tmp[0], mem[addrb_tmp[14:6]][0 +: 8], memp[addrb_tmp[14:6]][0:0]);
                 task_ram (web_tmp[1], dib_tmp[15:8], dipb_tmp[1], mem[addrb_tmp[14:6]][8 +: 8], memp[addrb_tmp[14:6]][1:1]);
                 task_ram (web_tmp[2], dib_tmp[23:16], dipb_tmp[2], mem[addrb_tmp[14:6]][16 +: 8], memp[addrb_tmp[14:6]][2:2]);
                 task_ram (web_tmp[3], dib_tmp[31:24], dipb_tmp[3], mem[addrb_tmp[14:6]][24 +: 8], memp[addrb_tmp[14:6]][3:3]);
                 task_ram (web_tmp[4], dib_tmp[39:32], dipb_tmp[4], mem[addrb_tmp[14:6]][32 +: 8], memp[addrb_tmp[14:6]][4:4]);
                 task_ram (web_tmp[5], dib_tmp[47:40], dipb_tmp[5], mem[addrb_tmp[14:6]][40 +: 8], memp[addrb_tmp[14:6]][5:5]);
                 task_ram (web_tmp[6], dib_tmp[55:48], dipb_tmp[6], mem[addrb_tmp[14:6]][48 +: 8], memp[addrb_tmp[14:6]][6:6]);
                 task_ram (web_tmp[7], dib_tmp[63:56], dipb_tmp[7], mem[addrb_tmp[14:6]][56 +: 8], memp[addrb_tmp[14:6]][7:7]);
                 
             end // case: 64
        endcase // case(wb_width)
    end
    
    endtask // task_wr_ram_b

    
    task task_rd_ram_a;

    input [15:0] addra_tmp;
    inout [63:0] doa_tmp;
    inout [7:0] dopa_tmp;

    begin

        case (ra_width)
        1, 2, 4 : begin
                      if (ra_width >= width)
                  doa_tmp = mem[addra_tmp[14:r_addra_lbit_124]];

                  else
                  doa_tmp = mem[addra_tmp[14:r_addra_bit_124+1]][(addra_tmp[r_addra_bit_124:r_addra_lbit_124] * ra_width) +: ra_width];
                  end
        8 : begin
                if (ra_width >= width) begin
                doa_tmp = mem[addra_tmp[14:3]];
                dopa_tmp =  memp[addra_tmp[14:3]];
            end
            else begin
                doa_tmp = mem[addra_tmp[14:r_addra_bit_8+1]][(addra_tmp[r_addra_bit_8:3] * 8) +: 8];
                dopa_tmp = memp[addra_tmp[14:r_addra_bit_8+1]][(addra_tmp[r_addra_bit_8:3] * 1) +: 1];
            end
            end
        16 : begin
                 if (ra_width >= width) begin
                 doa_tmp = mem[addra_tmp[14:4]];
                 dopa_tmp = memp[addra_tmp[14:4]];
             end 
             else begin
                 doa_tmp = mem[addra_tmp[14:r_addra_bit_16+1]][(addra_tmp[r_addra_bit_16:4] * 16) +: 16];
                 dopa_tmp = memp[addra_tmp[14:r_addra_bit_16+1]][(addra_tmp[r_addra_bit_16:4] * 2) +: 2];
             end
             end
        32 : begin
                 if (ra_width >= width) begin
                 doa_tmp = mem[addra_tmp[14:5]];
                 dopa_tmp = memp[addra_tmp[14:5]];
             end 
             else begin
                 doa_tmp = mem[addra_tmp[14:r_addra_bit_32+1]][(addra_tmp[r_addra_bit_32:5] * 32) +: 32];
                 dopa_tmp = memp[addra_tmp[14:r_addra_bit_32+1]][(addra_tmp[r_addra_bit_32:5] * 4) +: 4];
             end
             end
        64 : begin
                 if (ra_width >= width) begin
                 doa_tmp = mem[addra_tmp[14:6]];
                 dopa_tmp = memp[addra_tmp[14:6]];
             end 
             end                 
        endcase // case(ra_width)

    end
    endtask // task_rd_ram_a
    

    task task_rd_ram_b;

    input [15:0] addrb_tmp;
    inout [31:0] dob_tmp;
    inout [3:0] dopb_tmp;

    begin
        
        case (rb_width)
        1, 2, 4 : begin
                      if (rb_width >= width)
                  dob_tmp = mem[addrb_tmp[14:r_addrb_lbit_124]];
                  else
                  dob_tmp = mem[addrb_tmp[14:r_addrb_bit_124+1]][(addrb_tmp[r_addrb_bit_124:r_addrb_lbit_124] * rb_width) +: rb_width];
                             end
        8 : begin
                if (rb_width >= width) begin
                dob_tmp = mem[addrb_tmp[14:3]];
                dopb_tmp =  memp[addrb_tmp[14:3]];
            end
            else begin
                dob_tmp = mem[addrb_tmp[14:r_addrb_bit_8+1]][(addrb_tmp[r_addrb_bit_8:3] * 8) +: 8];
                dopb_tmp = memp[addrb_tmp[14:r_addrb_bit_8+1]][(addrb_tmp[r_addrb_bit_8:3] * 1) +: 1];
            end
            end
        16 : begin
                 if (rb_width >= width) begin
                 dob_tmp = mem[addrb_tmp[14:4]];
                 dopb_tmp = memp[addrb_tmp[14:4]];
             end 
             else begin
                 dob_tmp = mem[addrb_tmp[14:r_addrb_bit_16+1]][(addrb_tmp[r_addrb_bit_16:4] * 16) +: 16];
                 dopb_tmp = memp[addrb_tmp[14:r_addrb_bit_16+1]][(addrb_tmp[r_addrb_bit_16:4] * 2) +: 2];
             end
              end
        32 : begin
                 dob_tmp = mem[addrb_tmp[14:5]];
                 dopb_tmp = memp[addrb_tmp[14:5]];
             end
        
        endcase
    end
    endtask // task_rd_ram_b    


    function [7:0] fn_dip_ecc;

    input encode;
    input [63:0] di_in;
    input [7:0] dip_in;

    begin

        fn_dip_ecc[0] = di_in[0]^di_in[1]^di_in[3]^di_in[4]^di_in[6]^di_in[8]
             ^di_in[10]^di_in[11]^di_in[13]^di_in[15]^di_in[17]^di_in[19]
             ^di_in[21]^di_in[23]^di_in[25]^di_in[26]^di_in[28]
                     ^di_in[30]^di_in[32]^di_in[34]^di_in[36]^di_in[38]
             ^di_in[40]^di_in[42]^di_in[44]^di_in[46]^di_in[48]
             ^di_in[50]^di_in[52]^di_in[54]^di_in[56]^di_in[57]^di_in[59]
             ^di_in[61]^di_in[63];

        fn_dip_ecc[1] = di_in[0]^di_in[2]^di_in[3]^di_in[5]^di_in[6]^di_in[9]
                     ^di_in[10]^di_in[12]^di_in[13]^di_in[16]^di_in[17]
                     ^di_in[20]^di_in[21]^di_in[24]^di_in[25]^di_in[27]^di_in[28]
                     ^di_in[31]^di_in[32]^di_in[35]^di_in[36]^di_in[39]
                     ^di_in[40]^di_in[43]^di_in[44]^di_in[47]^di_in[48]
                     ^di_in[51]^di_in[52]^di_in[55]^di_in[56]^di_in[58]^di_in[59]
                     ^di_in[62]^di_in[63];

        fn_dip_ecc[2] = di_in[1]^di_in[2]^di_in[3]^di_in[7]^di_in[8]^di_in[9]
                     ^di_in[10]^di_in[14]^di_in[15]^di_in[16]^di_in[17]
                     ^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[29]
                     ^di_in[30]^di_in[31]^di_in[32]^di_in[37]^di_in[38]^di_in[39]
                     ^di_in[40]^di_in[45]^di_in[46]^di_in[47]^di_in[48]
                     ^di_in[53]^di_in[54]^di_in[55]^di_in[56]
                     ^di_in[60]^di_in[61]^di_in[62]^di_in[63];
    
        fn_dip_ecc[3] = di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
             ^di_in[10]^di_in[18]^di_in[19]
                     ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]
                     ^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                     ^di_in[40]^di_in[49]
                     ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];

        fn_dip_ecc[4] = di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                     ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]
                     ^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                     ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];


        fn_dip_ecc[5] = di_in[26]^di_in[27]^di_in[28]^di_in[29]
                     ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                     ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                     ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];

        fn_dip_ecc[6] = di_in[57]^di_in[58]^di_in[59]
                     ^di_in[60]^di_in[61]^di_in[62]^di_in[63];

        if (encode == 1'b1)
        
        fn_dip_ecc[7] = fn_dip_ecc[0]^fn_dip_ecc[1]^fn_dip_ecc[2]^fn_dip_ecc[3]^fn_dip_ecc[4]^fn_dip_ecc[5]^fn_dip_ecc[6]
                     ^di_in[0]^di_in[1]^di_in[2]^di_in[3]^di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
                     ^di_in[10]^di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                     ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[26]^di_in[27]^di_in[28]^di_in[29]
                     ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                     ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                     ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56]^di_in[57]^di_in[58]^di_in[59]
                     ^di_in[60]^di_in[61]^di_in[62]^di_in[63];
        else
        fn_dip_ecc[7] = dip_in[0]^dip_in[1]^dip_in[2]^dip_in[3]^dip_in[4]^dip_in[5]^dip_in[6]
                     ^di_in[0]^di_in[1]^di_in[2]^di_in[3]^di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
                     ^di_in[10]^di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                     ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[26]^di_in[27]^di_in[28]^di_in[29]
                     ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                     ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                     ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56]^di_in[57]^di_in[58]^di_in[59]
                     ^di_in[60]^di_in[61]^di_in[62]^di_in[63];
        
    end
    
    endfunction // fn_dip_ecc

/******************************************** END task and function **************************************/

    
/**************************** Port A ****************************************/

    always @(posedge clka_in) begin
    
    if (cascade_a[1])
        addra_in_15_reg_bram = ~addra_in[15];
    else
        addra_in_15_reg_bram = addra_in[15];
    
    
    // registering addra_in[15] the second time
    if (regcea_in)
        addra_in_15_reg1 = addra_in_15_reg;   
    
    
    if (ena_in && (wr_mode_a != 2'b10 || wea_in[0] == 0 || rstrama_in == 1'b1))
        if (cascade_a[1])
        addra_in_15_reg = ~addra_in[15];
        else
        addra_in_15_reg = addra_in[15];
    
    
    if (ena_in == 1'b1 && (cascade_a == 2'b00 || (addra_in_15_reg_bram == 1'b0 && cascade_a != 2'b00))) begin
        
        // SRVAL
        if (rstrama_in === 1'b1) begin
        
        doa_buf = SRVAL_A[0 +: ra_width];
        doa_out = SRVAL_A[0 +: ra_width];
        
        if (ra_width >= 8) begin
            dopa_buf = SRVAL_A[ra_width +: ra_widthp];
            dopa_out = SRVAL_A[ra_width +: ra_widthp];
        end
        end
        
        
        
        // Read first
        if (wr_mode_a == 2'b01) begin
        task_rd_ram_a (addra_in, doa_buf, dopa_buf);
        
        
        // ECC decode
        if (ram_mode_int == 0 && en_ecc_read_int == 1) begin
            
            dopr_ecc = fn_dip_ecc(1'b0, doa_buf, dopa_buf);
            
            syndrome = dopr_ecc ^ dopa_buf;
            
            if (syndrome !== 0) begin
            
            if (syndrome[7]) begin  // dectect single bit error
                
                ecc_bit_position = {doa_buf[63:57], dopa_buf[6], doa_buf[56:26], dopa_buf[5], doa_buf[25:11], dopa_buf[4], doa_buf[10:4], dopa_buf[3], doa_buf[3:1], dopa_buf[2], doa_buf[0], dopa_buf[1:0], dopa_buf[7]};
                        
                ecc_bit_position[syndrome[6:0]] = ~ecc_bit_position[syndrome[6:0]]; // correct single bit error in the output 
                
                dia_in_ecc_corrected = {ecc_bit_position[71:65], ecc_bit_position[63:33], ecc_bit_position[31:17], ecc_bit_position[15:9], ecc_bit_position[7:5], ecc_bit_position[3]}; // correct single bit error in the memory
                
                doa_buf = dia_in_ecc_corrected;
                
                dipa_in_ecc_corrected = {ecc_bit_position[0], ecc_bit_position[64], ecc_bit_position[32], ecc_bit_position[16], ecc_bit_position[8], ecc_bit_position[4], ecc_bit_position[2:1]}; // correct single bit error in the parity memory
                
                dopa_buf = dipa_in_ecc_corrected;
                
                dbiterr_out <= 0;
                sbiterr_out <= 1;
                
            end
            else if (!syndrome[7]) begin  // double bit error
                    sbiterr_out <= 0;
                dbiterr_out <= 1;
                
            end
            end // if (syndrome !== 0)
            else begin
            dbiterr_out <= 0;
                sbiterr_out <= 0;
            
            end // else: !if(syndrome !== 0)
            
            
            // output of rdaddrecc
            rdaddrecc_out[8:0] <= addra_in[14:6];
            
            end // if (ram_mode_int == 0 && en_ecc_read_int == 1)
        end // if (wr_mode_a == 2'b01)
        
        
        // Write
        task_wr_ram_a (wea_in, dia_in, dipa_in, addra_in);
        
        // Read if not read first
        if (wr_mode_a != 2'b01 && !(ram_mode_int == 0 && en_ecc_read_int == 1))
        task_rd_ram_a (addra_in, doa_buf, dopa_buf);
        
        
    end // if (ena_in == 1'b1 && (cascade_a == 2'b00 || (addra_in_15_reg_bram == 1'b0 && cascade_a != 2'b00)))

        
    // writing outputs of port A    
    if (ena_in) begin
        
        if (rstrama_in === 1'b0 && (wr_mode_a != 2'b10 || (WRITE_WIDTH_A <= 9 && wea_in[0] === 1'b0) || (WRITE_WIDTH_A == 18 && wea_in[1:0] === 2'b00) || ((WRITE_WIDTH_A == 36 || WRITE_WIDTH_A == 72) && wea_in[3:0] === 4'b0000))) begin
        
        doa_out <= doa_buf;
        
            if (ra_width >= 8)
            dopa_out <= dopa_buf;
        
        end
        
    end // if (ena_in)
    
    end // always @ (posedge clka_in)
    
    // end of port A
    
    
/************************************** port B ***************************************************************/    
    
    always @(posedge clkb_in) begin
    
    if (cascade_b[1])
        addrb_in_15_reg_bram = ~addrb_in[15];
    else
        addrb_in_15_reg_bram = addrb_in[15];
    
    
    if (regceb_in)
        addrb_in_15_reg1 = addrb_in_15_reg;   
    
    
    if (enb_in && (wr_mode_b != 2'b10 || web_in[0] == 0 || rstramb_in == 1'b1))
        if (cascade_b[1])
        addrb_in_15_reg = ~addrb_in[15];
        else
        addrb_in_15_reg = addrb_in[15];
    
    
    if (enb_in == 1'b1 && (cascade_b == 2'b00 || (addrb_in_15_reg_bram == 1'b0 && cascade_b != 2'b00))) begin
        
        // SRVAL
        if (rstramb_in === 1'b1) begin
        
        dob_buf = SRVAL_B[0 +: rb_width];
        dob_out = SRVAL_B[0 +: rb_width];
        
        if (rb_width >= 8) begin
            dopb_buf = SRVAL_B[rb_width +: rb_widthp];
            dopb_out = SRVAL_B[rb_width +: rb_widthp];
        end
        end
        
        
        
        // ECC encode
        if (ram_mode_int == 0 && en_ecc_write_int == 1) begin
        dip_ecc = fn_dip_ecc(1'b1, dib_in, dipb_in);
        eccparity_out = dip_ecc;
        dipb_in_ecc = dip_ecc;
        end
        else
        dipb_in_ecc = dipb_in;
        
        
        dib_in_ecc = dib_in;
        
        
        // injecting error
        if (injectdbiterr_in === 1) begin  // double bit
        dib_in_ecc[30] = ~dib_in_ecc[30];
        dib_in_ecc[62] = ~dib_in_ecc[62];
        end
        else if (injectsbiterr_in === 1) begin // single bit
        dib_in_ecc[30] = ~dib_in_ecc[30];
        end
        
        
        // Read first
        if (wr_mode_b == 2'b01 && rstramb_in === 1'b0)
        task_rd_ram_b (addrb_in, dob_buf, dopb_buf);        
        
        
        // Write
        task_wr_ram_b (web_in, dib_in_ecc, dipb_in_ecc, addrb_in);
        
        
        // Read if not read first
        if (wr_mode_b != 2'b01 && rstramb_in === 1'b0)
        task_rd_ram_b (addrb_in, dob_buf, dopb_buf);
        
        
    end // if (enb_in == 1'b1 && (cascade_b == 2'b00 || (addrb_in_15_reg_bram == 1'b0 && cascade_b != 2'b00)))
    
        
    // writing outputs of port B    
    if (enb_in) begin
        
        if (rstramb_in === 1'b0 && (wr_mode_b != 2'b10 || (WRITE_WIDTH_B <= 9 && web_in[0] === 1'b0) || (WRITE_WIDTH_B == 18 && web_in[1:0] === 2'b00) || (WRITE_WIDTH_B == 36 && web_in[3:0] === 4'b0000) || (WRITE_WIDTH_B == 72 && web_in[7:0] === 8'h00))) begin
        
        dob_out <= dob_buf;
        
        if (rb_width >= 8)
            dopb_out <= dopb_buf;
        
        end
        
    end // if (enb_in)
    
    end // always @ (posedge clkb_in)

    // end of port B



    // ********* Cascade  Port A ********
//    always @(posedge clka_in or cascadeina_in or addra_in_15_reg or doa_out or dopa_out) begin
    always @(cascade_a[1] or cascadeina_in or addra_in_15_reg or doa_out or dopa_out) begin

    if (cascade_a[1] == 1'b1 && addra_in_15_reg == 1'b1) begin
        doa_out_mux[0] = cascadeina_in;
    end
    else begin
        doa_out_mux = doa_out;

        if (ra_width >= 8)
        dopa_out_mux = dopa_out;
        
    end
    
    end

    // output register mode
//    always @(posedge clka_in or cascadeina_in or addra_in_15_reg1 or doa_outreg or dopa_outreg) begin
    always @(cascade_a[1] or cascadeina_in or addra_in_15_reg1 or doa_outreg or dopa_outreg) begin

    if (cascade_a[1] == 1'b1 && addra_in_15_reg1 == 1'b1) begin
        doa_outreg_mux[0] = cascadeina_in;
    end
    else begin
        doa_outreg_mux = doa_outreg;

        if (ra_width >= 8)
        dopa_outreg_mux = dopa_outreg;
        
    end
    
    end

    
    // ********* Cascade  Port B ********
//    always @(posedge clkb_in or cascadeinb_in or addrb_in_15_reg or dob_out or dopb_out) begin
    always @(cascade_b[1] or cascadeinb_in or addrb_in_15_reg or dob_out or dopb_out) begin

    if (cascade_b[1] == 1'b1 && addrb_in_15_reg == 1'b1) begin
        dob_out_mux[0] = cascadeinb_in;
    end
    else begin
        dob_out_mux = dob_out;

        if (rb_width >= 8)
        dopb_out_mux = dopb_out;
        
    end
    
    end

    // output register mode
//    always @(posedge clkb_in or cascadeinb_in or addrb_in_15_reg1 or dob_outreg or dopb_outreg) begin
    always @(cascade_b[1] or cascadeinb_in or addrb_in_15_reg1 or dob_outreg or dopb_outreg) begin

    if (cascade_b[1] == 1'b1 && addrb_in_15_reg1 == 1'b1) begin
        dob_outreg_mux[0] = cascadeinb_in;
    end
    else begin
        dob_outreg_mux = dob_outreg;

        if (rb_width >= 8)
        dopb_outreg_mux = dopb_outreg;
        
    end

    end // always @ (posedge regclkb_in or cascadeinregb_in or addrb_in_15_reg1 or dob_outreg or dopb_outreg)

    
    // ***** Output Registers **** Port A *****
    always @(posedge clka_in) begin
    
    if (DOA_REG == 1) begin

        if (regcea_in === 1'b1) begin
        dbiterr_outreg <= dbiterr_out;
        sbiterr_outreg <= sbiterr_out;
        rdaddrecc_outreg <= rdaddrecc_out;
        end
        
        
        if (rstreg_priority_a_int == 0) begin // Virtex5 behavior
        
        if (regcea_in == 1'b1) begin
             if (rstrega_in == 1'b1) begin
            
            doa_outreg <= SRVAL_A[0 +: ra_width];
                
            if (ra_width >= 8)
                dopa_outreg <= SRVAL_A[ra_width +: ra_widthp];
            
            end
            else if (rstrega_in == 1'b0) begin
            
            doa_outreg <= doa_out;
            
            if (ra_width >= 8)
                dopa_outreg <= dopa_out;
            
            end
        end // if (regcea_in == 1'b1)
        
        end // if (rstreg_priority_a_int == 1'b0)
        else begin
        
         if (rstrega_in == 1'b1) begin
            
            doa_outreg <= SRVAL_A[0 +: ra_width];
            
            if (ra_width >= 8)
            dopa_outreg <= SRVAL_A[ra_width +: ra_widthp];
            
        end
        
        else if (rstrega_in == 1'b0) begin
            
            if (regcea_in == 1'b1) begin
                
            doa_outreg <= doa_out;
            
            if (ra_width >= 8)
                dopa_outreg <= dopa_out;
            
            end
        end
        end // else: !if(rstreg_priority_a_int == 1'b0)
        
    end // if (DOA_REG == 1)
    
    end // always @ (posedge clka_in)
        

    always @(doa_out_mux or dopa_out_mux or doa_outreg_mux or dopa_outreg_mux or dbiterr_out or dbiterr_outreg or sbiterr_out or sbiterr_outreg or rdaddrecc_out or rdaddrecc_outreg) begin

    case (DOA_REG)

        0 : begin
            dbiterr_out_out = dbiterr_out;
            sbiterr_out_out = sbiterr_out;
            rdaddrecc_out_out = rdaddrecc_out;
                doa_out_out[0 +: ra_width] = doa_out_mux[0 +: ra_width];

            if (ra_width >= 8)
            dopa_out_out[0 +: ra_widthp] = dopa_out_mux[0 +: ra_widthp];

            end
        1 : begin
            dbiterr_out_out = dbiterr_outreg;
            sbiterr_out_out = sbiterr_outreg;
                doa_out_out[0 +: ra_width] = doa_outreg_mux[0 +: ra_width];
            rdaddrecc_out_out = rdaddrecc_outreg;
        
            if (ra_width >= 8)
            dopa_out_out[0 +: ra_widthp] = dopa_outreg_mux[0 +: ra_widthp];

            end
        default : ;

    endcase

    end // always @ (doa_out_mux or dopa_out_mux or doa_outreg_mux or dopa_outreg_mux or dbiterr_out or dbiterr_outreg or sbiterr_out or sbiterr_outreg)
    

// ***** Output Registers **** Port B *****
    always @(posedge clkb_in) begin

    if (DOB_REG == 1) begin
    
        if (rstreg_priority_b_int == 0) begin // Virtex5 behavior
        
        if (regceb_in == 1'b1) begin
             if (rstregb_in == 1'b1) begin
            
            dob_outreg <= SRVAL_B[0 +: rb_width];
            
            if (rb_width >= 8)
                dopb_outreg <= SRVAL_B[rb_width +: rb_widthp];
            
            end
            else if (rstregb_in == 1'b0) begin
            
            dob_outreg <= dob_out;
            
            if (rb_width >= 8)
                dopb_outreg <= dopb_out;
            
            end
        end // if (regceb_in == 1'b1)
        
        end // if (rstreg_priority_b_int == 1'b0)
        else begin
        
         if (rstregb_in == 1'b1) begin
            
            dob_outreg <= SRVAL_B[0 +: rb_width];
            
            if (rb_width >= 8)
            dopb_outreg <= SRVAL_B[rb_width +: rb_widthp];
            
        end
        
        else if (rstregb_in == 1'b0) begin
            
            if (regceb_in == 1'b1) begin
            
                dob_outreg <= dob_out;
            
            if (rb_width >= 8)
                dopb_outreg <= dopb_out;
            
            end
        end
        end // else: !if(rstreg_priority_b_int == 1'b0)

    end // if (DOB_REG == 1)
    
    end // always @ (posedge clkb_in)
    

    always @(dob_out_mux or dopb_out_mux or dob_outreg_mux or dopb_outreg_mux) begin

    case (DOB_REG)
        
        0 : begin
                    dob_out_out[0 +: rb_width] = dob_out_mux[0 +: rb_width];
        
            if (rb_width >= 8)
            dopb_out_out[0 +: rb_widthp] = dopb_out_mux[0 +: rb_widthp];
            end
        1 : begin
                dob_out_out[0 +: rb_width] = dob_outreg_mux[0 +: rb_width];
            
            if (rb_width >= 8)
            dopb_out_out[0 +: rb_widthp] = dopb_outreg_mux[0 +: rb_widthp];

            end
        default : ;

    endcase

    end // always @ (dob_out_mux or dopb_out_mux or dob_outreg_mux or dopb_outreg_mux)

    
endmodule // X_RB36_INTERNAL_VLOG

// end of X_RB36_INTERNAL_VLOG - Note: Not an user primitive
