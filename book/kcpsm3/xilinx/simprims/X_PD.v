//    Xilinx Proprietary Primitive Cell X_PD for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_PD.v,v 1.2 2008/10/02 19:01:55 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_PD (O);

  output O;
  parameter LOC = "UNPLACED";
  pulldown (weak0) (O);
//  assign O = 1'b0;

endmodule
