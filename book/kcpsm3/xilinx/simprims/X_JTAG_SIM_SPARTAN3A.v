///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 12.1
//  \   \         Description : Xilinx Formal Library Component for SPARTAN3A
//  /   /                  Jtag TAP Controler
// /___/   /\     Filename : X_X_JTAG_SIM_SPARTAN3A.v
// \   \  /  \    Timestamp : May 7 14:30:05 PDT 2010
//  \___\/\___\
//
// Revision:
//    05/07/10 - Initial version.
// End Revision

`timescale 1 ps/1 ps

module X_JTAG_SIM_SPARTAN3A( TDO, TCK, TDI, TMS );


  output TDO;

  input TCK, TDI, TMS;
   
  parameter PART_NAME = "3S200A";

  

endmodule // X_JTAG_SIM_SPARTAN3A
