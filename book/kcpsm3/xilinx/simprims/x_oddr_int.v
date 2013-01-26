// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/x_oddr_int.v,v 1.1 2007/05/02 17:03:10 vandanad Exp $

`timescale 1 ps / 1 ps

module x_oddr_int (Q, C, CE, D1, D2, R, S);

    output Q;
    input C;
    input CE;
    input D1;
    input D2;    
    input R;
    input S;
    parameter DDR_CLK_EDGE = "OPPOSITE_EDGE";    
    parameter INIT = 1'b0;
    parameter SRTYPE = "SYNC";

endmodule // x_oddr_int
