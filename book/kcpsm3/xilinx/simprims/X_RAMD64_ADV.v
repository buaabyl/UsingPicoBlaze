// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMD64_ADV.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $

module X_RAMD64_ADV (O, CLK, I, RADR0, RADR1, RADR2, RADR3, RADR4, RADR5, WADR0, WADR1, WADR2, WADR3, WADR4, WADR5, WE, WE1, WE2);

  parameter INIT = 64'h0000000000000000;
  parameter LOC = "UNPLACED";
  output O;
  input CLK, I, RADR0, RADR1, RADR2, RADR3, RADR4, RADR5, WADR0, WADR1, WADR2, WADR3, WADR4, WADR5, WE, WE1, WE2;

  reg [63:0] mem;
  wire [5:0] wadr;
  wire [5:0] radr;
  wire in, we, we1, we2, clk;
  reg o_out;
  wire we_all;

  buf b1 (in, I);
  buf b2 (clk, CLK);
  buf b3_0 (we, WE);
  buf b3_1 (we1, WE1);
  buf b3_2 (we2, WE2);
  buf b4 (wadr[5],WADR5);
  buf b5 (wadr[4],WADR4);
  buf b6 (wadr[3],WADR3);
  buf b7 (wadr[2],WADR2);
  buf b8 (wadr[1],WADR1);
  buf b9 (wadr[0],WADR0);
  buf bA (radr[5],RADR5);
  buf bB (radr[4],RADR4);
  buf bC (radr[3],RADR3);
  buf bD (radr[2],RADR2);
  buf bE (radr[1],RADR1);
  buf bF (radr[0],RADR0);
  buf bG (O, o_out);

  //synopsys translate_off
  initial begin
    mem <= INIT;
  end
  //synopsys translate_on


  always @(posedge clk) begin
    if (we_all == 1'b1)
      mem[wadr] <= in;
  end

  always @(mem or radr) begin
    o_out <= mem[radr];
  end 
  assign we_all =  we & we1 & we2;

endmodule
