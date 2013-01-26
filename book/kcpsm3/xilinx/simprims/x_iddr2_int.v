// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/x_iddr2_int.v,v 1.1 2007/05/02 17:03:10 vandanad Exp $

`timescale  1 ps / 1 ps

module x_iddr2_int (Q0, Q1, C0, C1, CE, D, R, S);

    output Q0;
    output Q1;
    input C0;
    input C1;
    input CE;
    input D;
    input R;
    input S;
    parameter DDR_ALIGNMENT = "NONE";
    parameter INIT_Q0 = 1'b0;
    parameter INIT_Q1 = 1'b0;
    parameter SRTYPE = "SYNC";

endmodule // x_iddr2_int
