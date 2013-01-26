//    Xilinx Proprietary Primitive Cell X_OR3 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_OR3.v,v 1.2 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_OR3 (O, I0, I1, I2);

  output O;
  input I0, I1, I2;
  parameter LOC = "UNPLACED";
  or (O, I0, I1, I2);

endmodule
