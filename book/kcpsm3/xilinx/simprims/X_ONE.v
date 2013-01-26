//    Xilinx Proprietary Primitive Cell X_ONE for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_ONE.v,v 1.2 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_ONE (O);

  output O;
  parameter LOC = "UNPLACED";
  assign O = 1'b1;

endmodule
