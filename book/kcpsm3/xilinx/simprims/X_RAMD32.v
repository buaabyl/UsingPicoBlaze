//    Xilinx Proprietary Primitive Cell X_RAMD32 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMD32.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $
//

// `celldefine
`timescale 1 ps/1 ps

module X_RAMD32 (O, CLK, I, RADR0, RADR1, RADR2, RADR3, RADR4, WADR0, WADR1, WADR2, WADR3, WADR4, WE);

  parameter INIT = 32'h00000000;
  parameter LOC = "UNPLACED";
  output O;
  input I, CLK, WE, WADR0, WADR1, WADR2, WADR3, WADR4, RADR0, RADR1, RADR2, RADR3, RADR4;

    X_INV INV_WADR4 (
      .I (WADR4),
      .O (WADR4_INV)
    );

    X_AND2 AND_WE_0 (
      .I0 (WADR4_INV),
      .I1 (WE),
      .O (WE_0)
    );
    X_AND2 AND_WE_1 (
      .I0 (WADR4),
      .I1 (WE),
      .O (WE_1)
    );

    X_RAMD16 RAMD_O_0 (
      .RADR0 (RADR0),
      .RADR1 (RADR1),
      .RADR2 (RADR2),
      .RADR3 (RADR3),
      .WADR0 (WADR0),
      .WADR1 (WADR1),
      .WADR2 (WADR2),
      .WADR3 (WADR3),
      .I (I),
      .CLK (CLK),
      .WE (WE_0),
      .O (O_0)
    );
    X_RAMD16 RAMD_O_1 (
      .RADR0 (RADR0),
      .RADR1 (RADR1),
      .RADR2 (RADR2),
      .RADR3 (RADR3),
      .WADR0 (WADR0),
      .WADR1 (WADR1),
      .WADR2 (WADR2),
      .WADR3 (WADR3),
      .I (I),
      .CLK (CLK),
      .WE (WE_1),
      .O (O_1)
    );

    X_MUX2 MUX_O (
      .IA (O_0),
      .IB (O_1),
      .SEL (RADR4),
      .O (O)
    );

endmodule
