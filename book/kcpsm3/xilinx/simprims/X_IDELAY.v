// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_IDELAY.v,v 1.4 2008/10/02 19:01:54 vandanad Exp $

`timescale  1 ps / 1 ps

module X_IDELAY (O, C, CE, I, INC, RST);

    output O;
    input C;
    input CE;
    input I;
    input INC;
    input RST;
    parameter IOBDELAY_TYPE = "DEFAULT";    
    parameter IOBDELAY_VALUE = 0;
    parameter SIM_TAPDELAY_VALUE = 75;
    parameter LOC = "UNPLACED";
    assign    O = I;
    
endmodule // X_IDELAY
