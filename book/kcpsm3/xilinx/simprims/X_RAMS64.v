//    Xilinx Proprietary Primitive Cell X_RAMS64 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMS64.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $
//

// `celldefine
`timescale 1 ps/1 ps

module X_RAMS64 (O, ADR0, ADR1, ADR2, ADR3, ADR4, ADR5, CLK, I, WE);

  parameter INIT = 64'h0000000000000000;
  parameter LOC = "UNPLACED";
  output O;
  input I, CLK, WE, ADR0, ADR1, ADR2, ADR3, ADR4, ADR5;

    X_INV INV_ADR4 (
      .I (ADR4),
      .O (ADR4_INV)
    );
    X_INV INV_ADR5 (
      .I (ADR5),
      .O (ADR5_INV)
    );

    X_AND3 AND_WE_0 (
      .I0 (ADR4_INV),
      .I1 (ADR5_INV),
      .I2 (WE),
      .O (WE_0)
    );
    X_AND3 AND_WE_1 (
      .I0 (ADR4),
      .I1 (ADR5_INV),
      .I2 (WE),
      .O (WE_1)
    );
    X_AND3 AND_WE_2 (
      .I0 (ADR4_INV),
      .I1 (ADR5),
      .I2 (WE),
      .O (WE_2)
    );
    X_AND3 AND_WE_3 (
      .I0 (ADR4),
      .I1 (ADR5),
      .I2 (WE),
      .O (WE_3)
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
    X_RAMD16 RAMD_O_2 (
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
      .WE (WE_2),
      .O (O_2)
    );
    X_RAMD16 RAMD_O_3 (
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
      .WE (WE_3),
      .O (O_3)
    );

    X_MUX2 MUX_O_0 (
      .IA (O_0),
      .IB (O_1),
      .SEL (ADR4),
      .O (O_MUX_0)
    );
    X_MUX2 MUX_O_1 (
      .IA (O_2),
      .IB (O_3),
      .SEL (ADR4),
      .O (O_MUX_1)
    );
    X_MUX2 MUX_O (
      .IA (O_MUX_0),
      .IB (O_MUX_1),
      .SEL (ADR5),
      .O (O)
    );

endmodule
