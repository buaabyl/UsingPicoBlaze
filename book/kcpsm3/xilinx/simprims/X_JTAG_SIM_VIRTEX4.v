///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 12.1
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  Jtag TAP Controler
// /___/   /\     Filename : X_JTAG_SIM_VIRTEX4.v
// \   \  /  \    Timestamp : Fri May  7 16:44:20 PDT 2010
//  \___\/\___\
//
// Revision:
//    05/08/10 - Initial version.
// End Revision

`timescale 1 ps/1 ps

module X_JTAG_SIM_VIRTEX4( TDO, TCK, TDI, TMS );

  output TDO;

  input TCK, TDI, TMS;
   
  parameter PART_NAME = "LX15";

 endmodule // X_JTAG_SIM_VIRTEX4
