// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/unisims/NOR4B1.v,v 1.1 2005/05/10 01:20:06 wloo Exp $

/*

FUNCTION    : 4-INPUT NOR GATE

*/

`celldefine
`timescale  100 ps / 10 ps

module NOR4B1 (O, I0, I1, I2, I3);

    output O;

    input  I0, I1, I2, I3;

    not N0 (i0_inv, I0);
    nor O1 (O, i0_inv, I1, I2, I3);

endmodule
