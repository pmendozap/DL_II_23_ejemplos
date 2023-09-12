`timescale 1ns/1ps

module ejemplo_gen
#(
    parameter ANCHO = 8
)
(
    input logic [ANCHO - 1 : 0]   a,
    output logic                  b
);

logic [ANCHO-1:0] intermedios;


generate 
    genvar i;
    for(i=0;i<ANCHO;i=i+1) begin
        if(i==0)
            bloque U(
                .a(1'b1),
                .b(a[i]),
                .q(intermedios[i])
            );
        else
            bloque U(
                .a(a[i]),
                .b(intermedios[i-1]),
                .q(intermedios[i])
            );
    end
endgenerate

assign b = intermedios[ANCHO-1];

endmodule
