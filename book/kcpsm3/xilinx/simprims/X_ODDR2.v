// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_ODDR2.v,v 1.3 2008/10/02 19:01:54 vandanad Exp $

`timescale 1 ps / 1 ps

module X_ODDR2 (Q, C0, C1, CE, D0, D1, R, S);

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
    parameter LOC = "UNPLACED";
    pulldown r (R);
    pulldown s (S);
    pullup ce (CE);

    x_oddr2_int u1 (Q, C0, C1, CE, D0, D1, R, S);
    defparam u1.DDR_ALIGNMENT = DDR_ALIGNMENT;
    defparam u1.INIT = INIT;
    defparam u1.SRTYPE = SRTYPE;
    
endmodule // X_ODDR2
