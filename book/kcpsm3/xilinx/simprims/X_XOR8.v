//    Xilinx Proprietary Primitive Cell X_XOR8 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_XOR8.v,v 1.2 2008/10/02 19:01:57 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_XOR8 (O, I0, I1, I2, I3, I4, I5, I6, I7);

  output O;
  input I0, I1, I2, I3, I4, I5, I6, I7;
  parameter LOC = "UNPLACED";
  xor (O, I0, I1, I2, I3, I4, I5, I6, I7);

endmodule
