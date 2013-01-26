// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_SRLC32E.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $

`timescale 1 ps/1 ps

module X_SRLC32E (Q, Q31, A, CE, CLK, D);

  parameter INIT = 32'h00000000;
  parameter LOC = "UNPLACED";
  output Q;
  output Q31;

  input  [4:0] A;
  input  CE, CLK, D;

  reg  [31:0] data;
  reg  [5 :0] count;

  wire [4:0]  addr;
  wire d_in, ce_in, clk_in;

  buf b_d (d_in, D);
  buf b_ce (ce_in, CE);
  buf b_clk (clk_in, CLK);

  buf b_a0 (addr[0], A[0]);
  buf b_a1 (addr[1], A[1]);
  buf b_a2 (addr[2], A[2]);
  buf b_a3 (addr[3], A[3]);
  buf b_a4 (addr[4], A[4]);

  assign Q = data[addr];
  assign Q31 = data[31];

// synopsys translate_off
  initial begin
    for (count = 0; count < 32; count = count + 1)
      data[count] <= INIT[count];
  end
// synopsys translate_on


  always @(posedge clk_in) 
    if (ce_in == 1'b1) 
      data[31:0] <=  {data[30:0], d_in};

endmodule

