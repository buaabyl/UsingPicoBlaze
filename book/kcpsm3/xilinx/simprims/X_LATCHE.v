//    Xilinx Proprietary Primitive Cell X_LATCHE for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_LATCHE.v,v 1.3 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_LATCHE (O, CLK, GE, I, RST, SET);

  parameter INIT = 1'b0;
  parameter LOC = "UNPLACED";
  output O;
  input I, CLK, SET, RST, GE;

  wire nrst, nset, in_out;
  wire in_clk_enable, ge_clk_enable, set_clk_enable;
  reg notifier;

  pulldown rst (RST);
  pulldown set (SET);
  pullup ge (GE);
    
  not (nrst, RST);
  not (nset, SET);
  xor (in_out, I, O);

  and (in_clk_enable, nrst, nset, GE);
  and (ge_clk_enable, nrst, nset, in_out);
  and (set_clk_enable, nrst, GE);

  latchsre l1 (O, CLK, I, SET, RST, GE, notifier);

endmodule
