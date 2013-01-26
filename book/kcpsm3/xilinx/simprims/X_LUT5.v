//    Xilinx Proprietary Primitive Cell X_LUT5 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_LUT5.v,v 1.2 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_LUT5 (O, ADR0, ADR1, ADR2, ADR3, ADR4);

  parameter INIT = 32'h00000000;
  parameter LOC = "UNPLACED";
  output O;
  input ADR0, ADR1, ADR2, ADR3, ADR4;

    assign O = INIT[{ADR4,ADR3,ADR2,ADR1,ADR0}];

endmodule
