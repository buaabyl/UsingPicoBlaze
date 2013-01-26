//    Xilinx Proprietary Primitive Cell X_LUT3 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_LUT3.v,v 1.2 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_LUT3 (O, ADR0, ADR1, ADR2);

  parameter INIT = 8'h00;
  parameter LOC = "UNPLACED";
  output O;
  input ADR0, ADR1, ADR2;

        assign O = INIT[{ADR2,ADR1,ADR0}];

endmodule
