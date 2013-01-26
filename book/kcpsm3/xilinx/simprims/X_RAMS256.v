// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMS256.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $

module X_RAMS256 (O, ADR0, ADR1, ADR2, ADR3, ADR4, ADR5, ADR6, ADR7, CLK, I, WE);

  parameter INIT = 256'h0;
  parameter LOC = "UNPLACED";
  output O;
  input ADR0, ADR1, ADR2, ADR3, ADR4, ADR5, ADR6, ADR7, CLK, I, WE;

  reg [255:0] mem;
  wire [7:0] adr;

  wire in, we, clk;
  reg o_out;

  buf b1 (in, I);
  buf b2 (clk, CLK);
  buf b3 (we ,WE);
  buf ad_b7 (adr[7],ADR7);
  buf ad_b6 (adr[6],ADR6);
  buf ad_b5 (adr[5],ADR5);
  buf ad_b4 (adr[4],ADR4);
  buf ad_b3 (adr[3],ADR3);
  buf ad_b2 (adr[2],ADR2);
  buf ad_b1 (adr[1],ADR1);
  buf ad_b0 (adr[0],ADR0);
  buf bB (O, o_out);

  //synopsys translate_off
  initial 
    mem = INIT;
  //synopsys translate_on

  always @(posedge clk ) 
     if (we == 1'b1)
        mem[adr] <= in;


  always @(mem or adr ) 
    o_out = mem[adr];

endmodule
