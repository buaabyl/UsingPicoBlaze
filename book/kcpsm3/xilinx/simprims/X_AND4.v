//    Xilinx Proprietary Primitive Cell X_AND4 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_AND4.v,v 1.2 2008/10/02 19:01:53 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_AND4 (O, I0, I1, I2, I3);

  output O;
  input I0, I1, I2, I3;
  parameter LOC = "UNPLACED";
  and (O, I0, I1, I2, I3);

endmodule
