// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_CLK_DIV.v,v 1.2 2008/10/02 19:01:53 vandanad Exp $

`timescale 1 ps/1 ps

module X_CLK_DIV (CLKDV,CDRST,CLKIN);

    output CLKDV;
    input  CDRST,CLKIN;

    parameter DIVIDE_BY = 2;
    parameter DIVIDER_DELAY = 0;
    parameter LOC = "UNPLACED";
    
endmodule // X_CLK_DIV
