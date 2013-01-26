// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/x_oddr2_int.v,v 1.1 2007/05/02 17:03:10 vandanad Exp $

`timescale 1 ps / 1 ps

module x_oddr2_int (Q, C0, C1, CE, D0, D1, R, S);

    output Q;
    input C0;
    input C1;
    input CE;
    input D0;
    input D1;
    input R;
    input S;
    parameter DDR_ALIGNMENT = "NONE";    
    parameter INIT = 1'b0;
    parameter SRTYPE = "SYNC";

endmodule // x_oddr2_int
