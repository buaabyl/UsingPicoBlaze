//    Xilinx Proprietary Primitive Cell X_RAMS32 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMS32.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $
//

// `celldefine
`timescale 1 ps/1 ps

module X_RAMS32 (O, ADR0, ADR1, ADR2, ADR3, ADR4, CLK, I, WE);

  parameter INIT = 32'h00000000;
  parameter LOC = "UNPLACED";
  output O;
  input I, CLK, WE, ADR0, ADR1, ADR2, ADR3, ADR4;

    X_INV INV_ADR4 (
      .I (ADR4),
      .O (ADR4_INV)
    );

    X_AND2 AND_WE_0 (
      .I0 (ADR4_INV),
      .I1 (WE),
      .O (WE_0)
    );
    X_AND2 AND_WE_1 (
      .I0 (ADR4),
      .I1 (WE),
      .O (WE_1)
    );

    X_RAMD16 RAMD_O_0 (
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
      .WE (WE_0),
      .O (O_0)
    );
    X_RAMD16 RAMD_O_1 (
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
      .WE (WE_1),
      .O (O_1)
    );

    X_MUX2 MUX_O (
      .IA (O_0),
      .IB (O_1),
      .SEL (ADR4),
      .O (O)
    );

endmodule
