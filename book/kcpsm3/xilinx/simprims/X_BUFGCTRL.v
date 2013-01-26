// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_BUFGCTRL.v,v 1.2 2008/10/02 19:01:53 vandanad Exp $

`timescale 1 ps/1 ps

module X_BUFGCTRL (O, CE0, CE1, I0, I1, IGNORE0, IGNORE1, S0, S1);

    output O;
    input CE0;
    input CE1;
    input I0;
    input I1;
    input IGNORE0;
    input IGNORE1;
    input S0;
    input S1;
    parameter INIT_OUT = 0;
    parameter PRESELECT_I0 = "FALSE";
    parameter PRESELECT_I1 = "FALSE";
    parameter LOC = "UNPLACED";
// *** parameter checking
// *** input enable for i0

endmodule
