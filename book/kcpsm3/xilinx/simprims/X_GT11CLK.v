// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_GT11CLK.v,v 1.2 2008/10/02 19:01:53 vandanad Exp $

`timescale 1 ps / 1 ps 

module X_GT11CLK (
    SYNCLK1OUT,
    SYNCLK2OUT,
    MGTCLKN,
    MGTCLKP,
    REFCLK,
    RXBCLK,
    SYNCLK1IN,
    SYNCLK2IN
);

parameter REFCLKSEL = "MGTCLK";
parameter SYNCLK1OUTEN = "ENABLE";
parameter SYNCLK2OUTEN = "DISABLE";
parameter LOC = "UNPLACED";

output SYNCLK1OUT;
output SYNCLK2OUT;

input MGTCLKN;
input MGTCLKP;
input REFCLK;
input RXBCLK;
input SYNCLK1IN;
input SYNCLK2IN;

endmodule

