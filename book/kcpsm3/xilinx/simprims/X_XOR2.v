//    Xilinx Proprietary Primitive Cell X_XOR2 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_XOR2.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_XOR2 (O, I0, I1);

  output O;
  input I0, I1;
  parameter LOC = "UNPLACED";
   xor (O, I0, I1);

endmodule
