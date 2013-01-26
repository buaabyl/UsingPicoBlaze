//    Xilinx Proprietary Primitive Cell X_RAMD64 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_RAMD64.v,v 1.2 2008/10/02 19:01:56 vandanad Exp $
//

// `celldefine
`timescale 1 ps/1 ps

module X_RAMD64 (O, CLK, I, RADR0, RADR1, RADR2, RADR3, RADR4, RADR5, WADR0, WADR1, WADR2, WADR3, WADR4, WADR5, WE);

  parameter INIT = 64'h0000000000000000;
  parameter LOC = "UNPLACED";

  output O;
  input I, CLK, WE, WADR0, WADR1, WADR2, WADR3, WADR4, WADR5, RADR0, RADR1, RADR2, RADR3, RADR4, RADR5;

    X_INV INV_WADR4 (
      .I (WADR4),
      .O (WADR4_INV)
    );
    X_INV INV_WADR5 (
      .I (WADR5),
      .O (WADR5_INV)
    );

    X_AND3 AND_WE_0 (
      .I0 (WADR4_INV),
      .I1 (WADR5_INV),
      .I2 (WE),
      .O (WE_0)
    );
    X_AND3 AND_WE_1 (
      .I0 (WADR4),
      .I1 (WADR5_INV),
      .I2 (WE),
      .O (WE_1)
    );
    X_AND3 AND_WE_2 (
      .I0 (WADR4_INV),
      .I1 (WADR5),
      .I2 (WE),
      .O (WE_2)
    );
    X_AND3 AND_WE_3 (
      .I0 (WADR4),
      .I1 (WADR5),
      .I2 (WE),
      .O (WE_3)
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
    X_RAMD16 RAMD_O_2 (
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
      .WE (WE_2),
      .O (O_2)
    );
    X_RAMD16 RAMD_O_3 (
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
      .WE (WE_3),
      .O (O_3)
    );

    X_MUX2 MUX_O_0 (
      .IA (O_0),
      .IB (O_1),
      .SEL (RADR4),
      .O (O_MUX_0)
    );
    X_MUX2 MUX_O_1 (
      .IA (O_2),
      .IB (O_3),
      .SEL (RADR4),
      .O (O_MUX_1)
    );
    X_MUX2 MUX_O (
      .IA (O_MUX_0),
      .IB (O_MUX_1),
      .SEL (RADR5),
      .O (O)
    );

endmodule
