// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_OBUF.v,v 1.4 2008/10/02 19:01:54 vandanad Exp $

/*

FUNCTION    : OUTPUT BUFFER

*/

`celldefine
`timescale  100 ps / 10 ps

module X_OBUF (O, I);

    parameter CAPACITANCE = "DONT_CARE";
    parameter DRIVE = 12;
    parameter IOSTANDARD = "DEFAULT";
    parameter SLEW = "SLOW";
    parameter LOC = "UNPLACED"; 
    output O;

    input  I;

    bufif0 B1 (O, I, 1'b0);

endmodule
