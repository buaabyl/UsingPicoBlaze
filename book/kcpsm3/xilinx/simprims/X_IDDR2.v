// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_IDDR2.v,v 1.3 2008/10/02 19:01:54 vandanad Exp $

`timescale  1 ps / 1 ps

module X_IDDR2 (Q0, Q1, C0, C1, CE, D, R, S);

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
    parameter LOC = "UNPLACED";
    pulldown r (R);
    pulldown s (S);
    pullup ce (CE);

    x_iddr2_int u1 (Q0, Q1, C0, C1, CE, D, R, S);
    defparam u1.DDR_ALIGNMENT = DDR_ALIGNMENT;
    defparam u1.INIT_Q0 = INIT_Q0;
    defparam u1.INIT_Q1 = INIT_Q1;    
    defparam u1.SRTYPE = SRTYPE;
    
endmodule // X_IDDR2
