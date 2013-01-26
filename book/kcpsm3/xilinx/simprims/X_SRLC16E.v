//    Xilinx Proprietary Primitive Cell X_SRLC16E for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_SRLC16E.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $
//

// `celldefine
`timescale 1 ps/1 ps

module X_SRLC16E (Q, Q15, A0, A1, A2, A3, CE, CLK, D);

  parameter INIT = 16'h0000;
  parameter LOC = "UNPLACED";

  output Q, Q15;
  input  A0, A1, A2, A3, CE, CLK, D;

  reg  [5:0]  count;
  reg  [15:0] data;
  wire [3:0]  addr;
  wire d_in, ce_in, clk_in;

  buf b_d (d_in, D);
  buf b_ce (ce_in, CE);
  buf b_clk (clk_in, CLK);

  buf b_a3 (addr[3], A3);
  buf b_a2 (addr[2], A2);
  buf b_a1 (addr[1], A1);
  buf b_a0 (addr[0], A0);

  assign Q = data[addr];
  assign Q15 = data[15];

// synopsys translate_off
  initial begin
    for (count = 0; count < 16; count = count + 1)
      data[count] <= INIT[count];
  end
// synopsys translate_on

  always @(posedge clk_in) begin
    if (ce_in == 1'b1) begin
      {data[15:0]} <= {data[14:0], d_in};
    end
  end

endmodule
