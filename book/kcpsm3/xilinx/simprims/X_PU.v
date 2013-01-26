//    Xilinx Proprietary Primitive Cell X_PU for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_PU.v,v 1.2 2008/10/02 19:01:55 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_PU (O);

  output O;
  parameter LOC = "UNPLACED";
  pullup (weak1) (O);

//  assign O = 1'bz;

endmodule
