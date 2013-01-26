// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_IDDR.v,v 1.4 2008/10/02 19:01:54 vandanad Exp $

`timescale  1 ps / 1 ps

module X_IDDR (Q1, Q2, C, CE, D, R, S);

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
    parameter LOC = "UNPLACED";
    pulldown r (R);
    pulldown s (S);
    pullup ce (CE);

    x_iddr_int u1 (Q1, Q2, C, CE, D, R, S);
    defparam u1.DDR_CLK_EDGE = DDR_CLK_EDGE;
    defparam u1.INIT_Q1 = INIT_Q1;
    defparam u1.INIT_Q2 = INIT_Q2;    
    defparam u1.SRTYPE = SRTYPE;
    
endmodule // X_IDDR
