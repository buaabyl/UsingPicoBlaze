//    Xilinx Proprietary Primitive Cell X_RAMS16 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMS16.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_RAMS16 (O, ADR0, ADR1, ADR2, ADR3, CLK, I, WE);

  parameter INIT = 16'h0000;
  parameter LOC = "UNPLACED";
  output O;

  input I, CLK, WE, ADR0, ADR1, ADR2, ADR3;

    X_RAMD16 RAMD_O (
      .RADR0 (ADR0),
      .RADR1 (ADR1),
      .RADR2 (ADR2),
      .RADR3 (ADR3),
      .WADR0 (ADR0),
      .WADR1 (ADR1),
      .WADR2 (ADR2),
      .WADR3 (ADR3),
      .I (I),
      .CLK (CLK),
      .WE (WE),
      .O (O)
    );

endmodule
