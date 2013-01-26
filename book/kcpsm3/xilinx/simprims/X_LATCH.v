//    Xilinx Proprietary Primitive Cell X_LATCH for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_LATCH.v,v 1.3 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_LATCH (O, CLK, I, RST, SET);

  parameter INIT = 1'b0;
  parameter LOC = "UNPLACED";
  output O;
  input I, CLK, SET, RST;

  wire nrst, nset, in_clk_enable;
  reg notifier;

  pulldown rst (RST);
  pulldown set (SET);
    
  not (nrst, RST);
  not (nset, SET);

  and (in_clk_enable, nrst, nset);

  latchsr l1 (O, CLK, I, SET, RST, notifier);

endmodule
