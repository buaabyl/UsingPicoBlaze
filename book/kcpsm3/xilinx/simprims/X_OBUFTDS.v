//    Xilinx Proprietary Primitive Cell X_OBUFTDS for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_OBUFTDS.v,v 1.4 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_OBUFTDS (O, OB, I, T);
    
    parameter CAPACITANCE = "DONT_CARE";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = "UNPLACED";
    output O, OB;

    input  I, T;

    bufif0 B1 (O, I, T);
    notif0 N1 (OB, I, T);

endmodule
