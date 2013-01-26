// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_SPI_ACCESS.v,v 1.4 2008/10/02 19:01:56 vandanad Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i
//  \   \         Description : Xilinx Timing Formal Library Component
//  /   /                  Internal logic access to the Serial Peripheral Interface (SPI) PROM data
// /___/   /\     Filename : X_SPI_ACCESS.v
// \   \  /  \    Timestamp : Tues Nov 13 14:49:22 PDT 2007
//  \___\/\___\
//
//                WARNING!!!  -- "This behavioral model is for Xilinx test purpose only.
//                Simulation of this model is not currently supported by Xilinx."
//
// Revision:
//    11/13/07 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module X_SPI_ACCESS (MISO, CLK, CSB, MOSI);
parameter SIM_DELAY_TYPE = "SCALED"; // ACCURATE means enforce spec timing delays
                                     // SCALED means shorted delays for faster sim
parameter SIM_DEVICE = "3S1400AN";
parameter SIM_FACTORY_ID = 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;  // Security Register Bytes[64:127]
parameter SIM_MEM_FILE = "NONE"; // Memory pre-load
parameter SIM_USER_ID =    512'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF; // Security Register Bytes[0:63]
parameter LOC = "UNPLACED";


    output MISO;

    input CLK, CSB, MOSI;


endmodule // X_SPI_ACCESS
