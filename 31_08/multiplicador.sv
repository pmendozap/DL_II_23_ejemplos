module multiplicador (
    input logic [1:0]   a_i,
    input logic [1:0]   b_i,

    output logic [3:0]  m_o
);
    logic [1:0] c;
    logic [1:0] d;

    multiplica_un_bit mult_0 (
        .x (a_i),  //2 bits
        .y (b_i[0]),  //1 bit
        .z (c)   //2 bits
    );

    multiplica_un_bit mult_1 (
        .x (a_i),  //2 bits
        .y (b_i[1]),  //1 bit
        .z (d)   //2 bits
    );

    sumador suma (
        .a_i    ({1'b0,c}),
        .b_i    ({d,1'b0}),
        .c_i    (1'b0),
        .sum_o  (m_o[2:0]),
        .c_o    (m_o[3])
    );

endmodule