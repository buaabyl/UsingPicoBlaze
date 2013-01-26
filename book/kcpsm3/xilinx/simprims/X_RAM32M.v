// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAM32M.v,v 1.5 2008/10/02 19:01:55 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.2i
//  \   \         Description : Xilinx Formal Verification Library Component
//  /   /                 32-Deep by 8-bit Wide Multi Port RAM 
// /___/   /\     Filename : X_RAM32M.v
// \   \  /  \    Timestamp : Thu Jun  8 15:42:06 PDT 2006
//  \___\/\___\
//
// Revision:
//    06/08/06 - Initial version.
// End Revision

`timescale 1 ps/1 ps

module X_RAM32M (DOA, DOB, DOC, DOD, ADDRA, ADDRB, ADDRC, ADDRD, DIA, DIB, DIC, DID, WCLK, WE);

  parameter  INIT_A = 64'h0000000000000000;
  parameter  INIT_B = 64'h0000000000000000;
  parameter  INIT_C = 64'h0000000000000000;
  parameter  INIT_D = 64'h0000000000000000;
  parameter LOC = "UNPLACED";
  output [1:0] DOA;
  output [1:0] DOB;
  output [1:0] DOC;
  output [1:0] DOD;
  input [4:0] ADDRA;
  input [4:0] ADDRB;
  input [4:0] ADDRC;
  input [4:0] ADDRD;
  input [1:0] DIA;
  input [1:0] DIB;
  input [1:0] DIC;
  input [1:0] DID;
  input WCLK;
  input WE;
 
  reg [63:0] mem_a, mem_b, mem_c, mem_d;
  wire [4:0] addra_in, addrb_in, addrc_in, addrd_in;
  wire [1:0] dia_in, dib_in, dic_in, did_in;
  wire [1:0] doa_out, dob_out, doc_out, dod_out;
  wire wclk_in, we_in;

  buf addra_0 (addra_in[0], ADDRA[0]);
  buf addra_1 (addra_in[1], ADDRA[1]);
  buf addra_2 (addra_in[2], ADDRA[2]);
  buf addra_3 (addra_in[3], ADDRA[3]);
  buf addra_4 (addra_in[4], ADDRA[4]);

  buf addrb_0 (addrb_in[0], ADDRB[0]);
  buf addrb_1 (addrb_in[1], ADDRB[1]);
  buf addrb_2 (addrb_in[2], ADDRB[2]);
  buf addrb_3 (addrb_in[3], ADDRB[3]);
  buf addrb_4 (addrb_in[4], ADDRB[4]);

  buf addrc_0 (addrc_in[0], ADDRC[0]);
  buf addrc_1 (addrc_in[1], ADDRC[1]);
  buf addrc_2 (addrc_in[2], ADDRC[2]);
  buf addrc_3 (addrc_in[3], ADDRC[3]);
  buf addrc_4 (addrc_in[4], ADDRC[4]);

  buf addrd_0 (addrd_in[0], ADDRD[0]);
  buf addrd_1 (addrd_in[1], ADDRD[1]);
  buf addrd_2 (addrd_in[2], ADDRD[2]);
  buf addrd_3 (addrd_in[3], ADDRD[3]);
  buf addrd_4 (addrd_in[4], ADDRD[4]);

  buf dia_0 (dia_in[0], DIA[0]);
  buf dia_1 (dia_in[1], DIA[1]);
  buf dib_0 (dib_in[0], DIB[0]);
  buf dib_1 (dib_in[1], DIB[1]);
  buf dic_0 (dic_in[0], DIC[0]);
  buf dic_1 (dic_in[1], DIC[1]);
  buf did_0 (did_in[0], DID[0]);
  buf did_1 (did_in[1], DID[1]);

  buf wclk_b (wclk_in, WCLK);
  buf we_b (we_in ,WE);

  buf doa_0 (DOA[0], doa_out[0]);
  buf doa_1 (DOA[1], doa_out[1]);
  buf dob_0 (DOB[0], dob_out[0]);
  buf dob_1 (DOB[1], dob_out[1]);
  buf doc_0 (DOC[0], doc_out[0]);
  buf doc_1 (DOC[1], doc_out[1]);
  buf dod_0 (DOD[0], dod_out[0]);
  buf dod_1 (DOD[1], dod_out[1]);


  initial begin
    mem_a = INIT_A;
    mem_b = INIT_B;
    mem_c = INIT_C;
    mem_d = INIT_D;
  end

  always @(posedge wclk_in)
    if (we_in) begin
      mem_a[2*addrd_in] <= #100 dia_in[0];
      mem_a[2*addrd_in + 1] <= #100 dia_in[1];
      mem_b[2*addrd_in] <= #100 dib_in[0];
      mem_b[2*addrd_in + 1] <= #100 dib_in[1];
      mem_c[2*addrd_in] <= #100 dic_in[0];
      mem_c[2*addrd_in + 1] <= #100 dic_in[1];
      mem_d[2*addrd_in] <= #100 did_in[0];
      mem_d[2*addrd_in + 1] <= #100 did_in[1];
  end

   assign  doa_out[0] = mem_a[2*addra_in];
   assign  doa_out[1] = mem_a[2*addra_in + 1];
   assign  dob_out[0] = mem_b[2*addrb_in];
   assign  dob_out[1] = mem_b[2*addrb_in + 1];
   assign  doc_out[0] = mem_c[2*addrc_in];
   assign  doc_out[1] = mem_c[2*addrc_in + 1];
   assign  dod_out[0] = mem_d[2*addrd_in];
   assign  dod_out[1] = mem_d[2*addrd_in + 1];

endmodule
