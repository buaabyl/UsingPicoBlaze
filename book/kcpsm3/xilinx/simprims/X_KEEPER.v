//    Xilinx Proprietary Primitive Cell X_KEEPER for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_KEEPER.v,v 1.2 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps
 
module X_KEEPER (O);

  inout O;
  parameter LOC = "UNPLACED";
  wire  O_int;
  reg   I;

    always @(O_int)
        if (O_int)
            I <= 1;
        else
            I <= 0;

    buf (pull1, pull0) (O, I);
    buf (O_int, O);

endmodule
