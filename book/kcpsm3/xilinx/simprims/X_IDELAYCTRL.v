// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_IDELAYCTRL.v,v 1.2 2008/10/02 19:01:54 vandanad Exp $

`timescale 1 ps / 1 ps 

module X_IDELAYCTRL (RDY, REFCLK, RST);

    output RDY;
    input REFCLK;
    input RST;
    parameter LOC = "UNPLACED";
endmodule // X_IDELAYCTRL
