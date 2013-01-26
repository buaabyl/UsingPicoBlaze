// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_BSCAN_SPARTAN3.v,v 1.2 2008/10/02 19:01:53 vandanad Exp $

/*

FUNCTION    : X_BSCAN_SPARTAN3 dummy simulation module

*/

`celldefine
`timescale  100 ps / 10 ps

module X_BSCAN_SPARTAN3 (CAPTURE, DRCK1, DRCK2, RESET, SEL1, SEL2, SHIFT, TDI, UPDATE, TDO1, TDO2);

    input TDO1, TDO2;

    output CAPTURE, DRCK1, DRCK2, RESET, SEL1, SEL2, SHIFT, TDI, UPDATE;
    parameter LOC = "UNPLACED";
    pulldown (DRCK1);
    pulldown (DRCK2);
    pulldown (RESET);
    pulldown (SEL1);
    pulldown (SEL2);
    pulldown (SHIFT);
    pulldown (TDI);
    pulldown (UPDATE);

endmodule
