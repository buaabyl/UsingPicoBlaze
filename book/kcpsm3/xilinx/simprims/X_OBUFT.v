// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_OBUFT.v,v 1.4 2008/10/02 19:01:54 vandanad Exp $

/*

FUNCTION    : TRI-STATE OUTPUT BUFFER

*/

`celldefine
`timescale 1 ps/1 ps

module X_OBUFT (O, CTL, I);

    parameter CAPACITANCE = "DONT_CARE";
    parameter DRIVE = 12;
    parameter IOSTANDARD = "DEFAULT";
    parameter SLEW = "SLOW";
    parameter LOC = "UNPLACED";
    output O;
    input CTL, I;

    bufif0 t1 (O, I, CTL);

endmodule
