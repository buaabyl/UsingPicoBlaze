// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/BUFR.v,v 1.3 2008/08/11 22:17:43 vandanad Exp $

`timescale  1 ps / 1 ps

module BUFR (O, CE, CLR, I);

    output O;
    input CE;
    input CLR;
    input I;
    parameter BUFR_DIVIDE = "BYPASS";
    parameter SIM_DEVICE = "VIRTEX4";


endmodule // BUFR
