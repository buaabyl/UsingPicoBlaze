//    Xilinx Proprietary Primitive Cell X_OBUFDS for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_OBUFDS.v,v 1.4 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_OBUFDS (O, OB, I);
    
    parameter CAPACITANCE = "DONT_CARE";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = "UNPLACED";
    output O, OB;

    input  I;

    buf B1 (O, I);
    not I1 (OB, I);

endmodule
