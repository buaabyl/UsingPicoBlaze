///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i
//  \   \         Description : Xilinx Timing Formal Library Component
//  /   /                  Boundary Scan Logic Control Circuit for SPARTAN3A
// /___/   /\     Filename : BSCAN_SPARTAN3A.v
// \   \  /  \    Timestamp : Tue Nov 13 9:41:40 PDT 2007
//  \___\/\___\
//
// Revision:
//    11/12/07 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_BSCAN_SPARTAN3A (CAPTURE, DRCK1, DRCK2, RESET, SEL1, SEL2, SHIFT, TCK, TDI, TMS, UPDATE, TDO1, TDO2);

    output CAPTURE, DRCK1, DRCK2, RESET, SEL1, SEL2, SHIFT, TCK, TDI, TMS, UPDATE;

    input TDO1, TDO2;

    parameter LOC = "UNPLACED";

    pulldown (CAPTURE);
    pulldown (DRCK1);
    pulldown (DRCK2);
    pulldown (RESET);
    pulldown (SEL1);
    pulldown (SEL2);
    pulldown (SHIFT);
    pulldown (TCK);
    pulldown (TDI);
    pulldown (TMS);
    pulldown (UPDATE);

endmodule // X_BSCAN_SPARTAN3A
