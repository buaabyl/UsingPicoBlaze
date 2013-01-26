///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 12.1
//  \   \         Description : Xilinx Formal Library Component
//  /   /                  Jtag TAP Controler for VIRTEX6
// /___/   /\     Filename : X_JTAG_SIM_VIRTEX6.v
// \   \  /  \    Timestamp : Thu May  6 16:14:21 PDT 2010
//  \___\/\___\
//
// Revision:
//    05/06/10 - Initial version.
// End Revision

`timescale 1 ps/1 ps

module X_JTAG_SIM_VIRTEX6( TDO, TCK, TDI, TMS);


  output TDO;

  input TCK, TDI, TMS;
   

  parameter PART_NAME = "LX75T";

  
endmodule // X_JTAG_SIM_VIRTEX6
