//    Xilinx Proprietary Primitive Cell X_CLKDLLE for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/X_CLKDLLE.v,v 1.2 2008/10/02 19:01:53 vandanad Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_CLKDLLE (CLK0, CLK180, CLK270, CLK2X, CLK2X180, CLK90, CLKDV,
                LOCKED,
                CLKFB, CLKIN, RST);

parameter CLKDV_DIVIDE = 2.0;
parameter DUTY_CYCLE_CORRECTION = "TRUE";
parameter FACTORY_JF = 16'hC080;        // non-simulatable
parameter STARTUP_WAIT = "FALSE";        // non-simulatable
parameter LOC = "UNPLACED";

input  CLKIN, CLKFB, RST;
output CLK0, CLK90, CLK180, CLK270, CLK2X, CLK2X180, CLKDV;
output LOCKED;

endmodule