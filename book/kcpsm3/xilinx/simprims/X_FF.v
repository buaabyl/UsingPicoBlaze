//    Xilinx Proprietary Primitive Cell X_FF for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_FF.v,v 1.5 2008/10/02 19:01:53 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_FF (O, CE, CLK, I, RST, SET);

  parameter INIT = 1'b0;
  parameter LOC = "UNPLACED";
  output O;
  input I, CLK, SET, RST, CE;

  wire nrst, nset, in_out;
  wire in_clk_enable, ce_clk_enable, set_clk_enable;
  reg notifier;

    
  not (nrst, RST);
  not (nset, SET);
  xor (in_out, I, O);

  and (in_clk_enable, nrst, nset, CE);
  and (ce_clk_enable, nrst, nset, in_out);
  and (set_clk_enable, nrst, CE);

  ffsrce f1 (O, CLK, I, CE, SET, RST, notifier);

endmodule
