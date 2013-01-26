// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/x_iddr_int.v,v 1.1 2007/05/02 17:03:10 vandanad Exp $

`timescale  1 ps / 1 ps

module x_iddr_int (Q1, Q2, C, CE, D, R, S);

    output Q1;
    output Q2;
    input C;
    input CE;
    input D;
    input R;
    input S;
    parameter DDR_CLK_EDGE = "OPPOSITE_EDGE";    
    parameter INIT_Q1 = 1'b0;
    parameter INIT_Q2 = 1'b0;
    parameter SRTYPE = "SYNC";

endmodule // x_iddr_int
