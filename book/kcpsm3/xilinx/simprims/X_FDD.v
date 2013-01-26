// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_FDD.v,v 1.3 2008/10/02 19:01:53 vandanad Exp $

`timescale 1 ps/1 ps
 
module X_FDD (O, CE, CLK, I, RST, SET);

  parameter INIT = 1'b0;
  parameter LOC = "UNPLACED";
  output O;
  input CE, CLK, I, RST, SET;

  wire O;
  reg notifier;

  pulldown rst (RST);
  pulldown set (SET);
  pullup ce (CE);
    
  ffsrced (O, CLK, I, CE, SET, RST, notifier);

endmodule

