//    Xilinx Proprietary Primitive Cell X_OR32 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_OR32.v,v 1.2 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_OR32 (O, I0, I1, I2, I3, I4, I5, I6, I7,
               I8, I9, I10, I11, I12, I13, I14, I15,
               I16, I17, I18, I19, I20, I21, I22, I23,
               I24, I25, I26, I27, I28, I29, I30, I31);

  output O;
  input I0, I1, I2, I3, I4, I5, I6, I7,
        I8, I9, I10, I11, I12, I13, I14, I15,
        I16, I17, I18, I19, I20, I21, I22, I23,
        I24, I25, I26, I27, I28, I29, I30, I31;
  parameter LOC = "UNPLACED";
  or (O, I0, I1, I2, I3, I4, I5, I6, I7,
      I8, I9, I10, I11, I12, I13, I14, I15,
      I16, I17, I18, I19, I20, I21, I22, I23,
      I24, I25, I26, I27, I28, I29, I30, I31);

endmodule
