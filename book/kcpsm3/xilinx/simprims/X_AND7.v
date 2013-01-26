//    Xilinx Proprietary Primitive Cell X_AND7 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_AND7.v,v 1.2 2008/10/02 19:01:53 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_AND7 (O, I0, I1, I2, I3, I4, I5, I6);

  output O;
  input I0, I1, I2, I3, I4, I5, I6;
  parameter LOC = "UNPLACED";
  and (O, I0, I1, I2, I3, I4, I5, I6);

endmodule
