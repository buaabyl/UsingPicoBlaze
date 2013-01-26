
module X_CARRY4 (CO, O, CI, CYINIT, DI, S);


    output [3:0] CO;
    output [3:0] O;
    input        CI;
    input        CYINIT;
    input  [3:0] DI;
    input  [3:0] S;
    parameter LOC = "UNPLACED";
    wire [3:0] di_in, s_in, o_out, co_out;
    wire ci_or_cyinit;


    buf b_ci (ci_in, CI);
    buf b_cyinit (cyinit_in, CYINIT);
    buf b_di0 (di_in[0], DI[0]);
    buf b_di1 (di_in[1], DI[1]);
    buf b_di2 (di_in[2], DI[2]);
    buf b_di3 (di_in[3], DI[3]);
    buf b_s0 (s_in[0], S[0]);
    buf b_s1 (s_in[1], S[1]);
    buf b_s2 (s_in[2], S[2]);
    buf b_s3 (s_in[3], S[3]);
    buf b_o0 (O[0], o_out[0]);
    buf b_o1 (O[1], o_out[1]);
    buf b_o2 (O[2], o_out[2]);
    buf b_o3 (O[3], o_out[3]);
    buf b_co0 (CO[0], co_out[0]);
    buf b_co1 (CO[1], co_out[1]);
    buf b_co2 (CO[2], co_out[2]);
    buf b_co3 (CO[3], co_out[3]);

    assign o_out = s_in ^ {co_out[2:0], ci_or_cyinit};
    assign co_out[0] = s_in[0] ? ci_or_cyinit : di_in[0];
    assign co_out[1] = s_in[1] ? co_out[0] : di_in[1];
    assign co_out[2] = s_in[2] ? co_out[1] : di_in[2];
    assign co_out[3] = s_in[3] ? co_out[2] : di_in[3];
    assign  ci_or_cyinit = ci_in | cyinit_in;



endmodule

