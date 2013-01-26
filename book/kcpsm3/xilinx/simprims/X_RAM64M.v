// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAM64M.v,v 1.5 2008/10/02 19:01:55 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.2i
//  \   \         Description : Xilinx Formal Verification Library Component
//  /   /                 64-Deep by 4-bit Wide Multi Port RAM 
// /___/   /\     Filename : X_RAM64M.v
// \   \  /  \    Timestamp : Thu Jun  8 15:42:06 PDT 2006
//  \___\/\___\
//
// Revision:
//    06/08/06 - Initial version.
// End Revision

`timescale 1 ps/1 ps

module X_RAM64M (DOA, DOB, DOC, DOD, ADDRA, ADDRB, ADDRC, ADDRD, DIA, DIB, DIC, DID, WCLK, WE);

  parameter  INIT_A = 64'h0000000000000000;
  parameter  INIT_B = 64'h0000000000000000;
  parameter  INIT_C = 64'h0000000000000000;
  parameter  INIT_D = 64'h0000000000000000;
  parameter LOC = "UNPLACED";
  output DOA;
  output DOB;
  output DOC;
  output DOD;
  input [5:0] ADDRA;
  input [5:0] ADDRB;
  input [5:0] ADDRC;
  input [5:0] ADDRD;
  input  DIA;
  input  DIB;
  input  DIC;
  input  DID;
  input WCLK;
  input WE;

  reg [63:0] mem_a, mem_b, mem_c, mem_d;
  wire [5:0] addra_in, addrb_in, addrc_in, addrd_in;
  wire  dia_in, dib_in, dic_in, did_in;
  wire  doa_out, dob_out, doc_out, dod_out;
  wire wclk_in, we_in;
  reg notifier;

  buf addra_0 (addra_in[0], ADDRA[0]);
  buf addra_1 (addra_in[1], ADDRA[1]);
  buf addra_2 (addra_in[2], ADDRA[2]);
  buf addra_3 (addra_in[3], ADDRA[3]);
  buf addra_4 (addra_in[4], ADDRA[4]);
  buf addra_5 (addra_in[5], ADDRA[5]);

  buf addrb_0 (addrb_in[0], ADDRB[0]);
  buf addrb_1 (addrb_in[1], ADDRB[1]);
  buf addrb_2 (addrb_in[2], ADDRB[2]);
  buf addrb_3 (addrb_in[3], ADDRB[3]);
  buf addrb_4 (addrb_in[4], ADDRB[4]);
  buf addrb_5 (addrb_in[5], ADDRB[5]);

  buf addrc_0 (addrc_in[0], ADDRC[0]);
  buf addrc_1 (addrc_in[1], ADDRC[1]);
  buf addrc_2 (addrc_in[2], ADDRC[2]);
  buf addrc_3 (addrc_in[3], ADDRC[3]);
  buf addrc_4 (addrc_in[4], ADDRC[4]);
  buf addrc_5 (addrc_in[5], ADDRC[5]);

  buf addrd_0 (addrd_in[0], ADDRD[0]);
  buf addrd_1 (addrd_in[1], ADDRD[1]);
  buf addrd_2 (addrd_in[2], ADDRD[2]);
  buf addrd_3 (addrd_in[3], ADDRD[3]);
  buf addrd_4 (addrd_in[4], ADDRD[4]);
  buf addrd_5 (addrd_in[5], ADDRD[5]);

  buf dia_0 (dia_in, DIA);
  buf dib_0 (dib_in, DIB);
  buf dic_0 (dic_in, DIC);
  buf did_0 (did_in, DID);

  buf wclk_b (wclk_in, WCLK);
  buf we_b (we_in ,WE);

  buf doa_0 (DOA, doa_out);
  buf dob_0 (DOB, dob_out);
  buf doc_0 (DOC, doc_out);
  buf dod_0 (DOD, dod_out);


  initial begin
    mem_a = INIT_A;
    mem_b = INIT_B;
    mem_c = INIT_C;
    mem_d = INIT_D;
  end

  always @(posedge wclk_in)
    if (we_in) begin
      mem_a[addrd_in] <= #100 dia_in;
      mem_b[addrd_in] <= #100 dib_in;
      mem_c[addrd_in] <= #100 dic_in;
      mem_d[addrd_in] <= #100 did_in;
  end

   assign  doa_out = mem_a[addra_in];
   assign  dob_out = mem_b[addrb_in];
   assign  doc_out = mem_c[addrc_in];
   assign  dod_out = mem_d[addrd_in];

endmodule
