// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/IBUFG_HSTL_I_DCI_18.v,v 1.1 2005/05/10 01:20:04 wloo Exp $

/*

FUNCTION    : INPUT BUFFER

*/

`celldefine
`timescale  100 ps / 10 ps

module IBUFG_HSTL_I_DCI_18 (O, I);

    output O;

    input  I;

    buf B1 (O, I);

endmodule
