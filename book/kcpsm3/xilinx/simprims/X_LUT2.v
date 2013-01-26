//    Xilinx Proprietary Primitive Cell X_LUT2 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_LUT2.v,v 1.2 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_LUT2 (O, ADR0, ADR1);

  parameter INIT = 4'h0;
  parameter LOC = "UNPLACED";

  output O;
  input ADR0, ADR1;

    assign O = INIT[{ADR1,ADR0}];

endmodule
