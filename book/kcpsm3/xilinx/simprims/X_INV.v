//    Xilinx Proprietary Primitive Cell X_INV for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_INV.v,v 1.2 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_INV (O, I);

  output O;
  input I;
  parameter LOC = "UNPLACED";
  not (O, I);

endmodule
