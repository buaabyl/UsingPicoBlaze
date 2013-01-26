    ///////////////////////////////////////////////////////////////////////////////
    // Copyright (c) 1995/2006 Xilinx, Inc.
    // All Right Reserved.
    ///////////////////////////////////////////////////////////////////////////////
    //   ____  ____
    //  /   /\/   /
    // /___/  \  /    Vendor : Xilinx
    // \   \   \/     Version : 8.2i
    //  \   \         Description : Xilinx Formal Verification Library Component
    //  /   /                  Boundary Scan Logic Control Circuit for VIRTEX5
// /___/   /\     Filename : X_BSCAN_VIRTEX5.v
// \   \  /  \    Timestamp : Thu Jun  8 15:42:06 PDT 2006
//  \___\/\___\
//
// Revision:
//    06/08/06 - Initial version.
// End Revision

`timescale  1 ps / 1 ps


module X_BSCAN_VIRTEX5 (CAPTURE, DRCK, RESET, SEL, SHIFT, TDI, UPDATE, TDO);

    parameter JTAG_CHAIN = 1;
    parameter LOC = "UNPLACED";
    output CAPTURE, DRCK, RESET, SEL, SHIFT, TDI, UPDATE;
    
    input TDO;

    pulldown (DRCK);
    pulldown (RESET);
    pulldown (SEL);
    pulldown (SHIFT);
    pulldown (TDI);
    pulldown (UPDATE);

endmodule
