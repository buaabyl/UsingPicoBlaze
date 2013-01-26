//    Xilinx Proprietary Primitive Cell X_BUF for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_BUF.v,v 1.2 2008/10/02 19:01:53 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_BUF (O, I);

  output O;
  input I;
  parameter LOC = "UNPLACED";
  buf (O, I);

endmodule
