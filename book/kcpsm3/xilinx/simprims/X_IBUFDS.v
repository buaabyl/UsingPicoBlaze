//    Xilinx Proprietary Primitive Cell X_IBUFDS for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_IBUFDS.v,v 1.4 2008/10/02 19:01:54 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps


module X_IBUFDS (O, I, IB);

    parameter CAPACITANCE = "DONT_CARE";
    parameter DIFF_TERM = "FALSE";
    parameter IBUF_DELAY_VALUE = "0";
    parameter IFD_DELAY_VALUE = "AUTO";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = "UNPLACED";
    output O;

    input  I, IB;

    reg o_out;

    buf b_O (O, o_out);

    always @(I or IB) begin
    if (I == 1'b1 && IB == 1'b0)
        o_out <= I;
    else if (I == 1'b0 && IB == 1'b1)
        o_out <= I;
    end

endmodule
