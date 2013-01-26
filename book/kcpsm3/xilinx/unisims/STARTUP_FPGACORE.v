// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/STARTUP_FPGACORE.v,v 1.2 2007/12/07 01:35:04 vandanad Exp $
/*

FUNCTION    : Special Function Cell, STARTUP_FPGACORE

*/

`timescale  100 ps / 10 ps

module STARTUP_FPGACORE (CLK, GSR);

    input  CLK, GSR;

// synopsys translate_off    
    tri0 GSR;

    assign glbl.GSR = GSR;
// synopsys translate_on

endmodule

