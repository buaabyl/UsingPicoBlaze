//    Xilinx Proprietary Primitive Cell X_TRI for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_TRI.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_TRI (O, CTL, I);

  output O;
  input I, CTL;
  parameter LOC = "UNPLACED";
  bufif1 (O, I, CTL);

endmodule
