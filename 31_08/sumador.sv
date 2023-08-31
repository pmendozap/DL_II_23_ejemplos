module sumador (
    input logic [2:0]   a_i,
    input logic [2:0]   b_i,
    input logic         c_i,

    output logic [2:0]  sum_o,
    output logic        c_o
);

assign {c_o,sum_o} = a_i+b_i+c_i;

endmodule