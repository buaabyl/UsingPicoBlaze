// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMS64_ADV.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $

module X_RAMS64_ADV (O, ADR0, ADR1, ADR2, ADR3, ADR4, ADR5, CLK, I, WE, WE1, WE2);

  parameter INIT = 64'h0000000000000000;
  parameter LOC = "UNPLACED";
  output O;
  input ADR0, ADR1, ADR2, ADR3, ADR4, ADR5, CLK, I, WE, WE1, WE2;

  reg [63:0] mem;
  wire [5:0] adr;

  wire in, we0, we1, we2, clk;
  reg o_out;

  wire we_all;

  buf b1 (in, I);
  buf b2 (clk, CLK);
  buf b30 (we0 ,WE);
  buf b31 (we1 ,WE1);
  buf b32 (we2 ,WE2);
  buf b4 (adr[5],ADR5);
  buf b5 (adr[4],ADR4);
  buf b6 (adr[3],ADR3);
  buf b7 (adr[2],ADR2);
  buf b8 (adr[1],ADR1);
  buf b9 (adr[0],ADR0);
  buf bA (O, o_out);

  //synopsys translate_off
  initial begin
    mem <= INIT;
  end
  //synopsys translate_on

  assign we_all = we0 & we1 & we2;

  always @(posedge clk) begin
    if (we_all == 1'b1)
      mem[adr] <= in;
  end

  always @(mem or adr) begin
    o_out <= mem[adr];
  end

endmodule
