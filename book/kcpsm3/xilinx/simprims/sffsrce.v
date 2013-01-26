//    Xilinx Proprietary Primitive Cell sffsrce for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/sffsrce.v,v 1.2 2010/02/11 22:03:36 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps
 
module sffsrce (q, clk, d, ce, set, rst, sset, srst, notifier);

    output q;
    input clk, d, ce, set, rst, sset, srst, notifier;

    nor (d2, d, sset);
    nor (d_gated, d2, srst);
    or (ce_gated, ce, sset, srst);

    sffsrce_prim u1 (.q(q), .ce(ce_gated), .clk(clk), .d(d_gated), .notifier(notifier), .rst(rst), .set(set));

endmodule
