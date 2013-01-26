// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_BSCAN_VIRTEX4.v,v 1.2 2008/10/02 19:01:53 vandanad Exp $

`timescale  100 ps / 10 ps

module X_BSCAN_VIRTEX4 (CAPTURE, DRCK, RESET, SEL, SHIFT, TDI, UPDATE, TDO);

    output CAPTURE, DRCK, RESET, SEL, SHIFT, TDI, UPDATE;
    input TDO;
    parameter JTAG_CHAIN = 1;
    parameter LOC = "UNPLACED";
    pulldown (DRCK);
    pulldown (RESET);
    pulldown (SEL);
    pulldown (SHIFT);
    pulldown (TDI);
    pulldown (UPDATE);
    
endmodule
