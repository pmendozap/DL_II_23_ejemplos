`timescale  1ns/1ps
module tb_mux;

parameter ANCHO = 8;

//variables de estimulo
logic [ANCHO - 1 :0] dato1, dato2;
logic s;

//variables de salida
logic [ANCHO - 1:0] salida;

mux_v3 #(.ANCHO(ANCHO)) dut (
    .d0(dato1),
    .d1(dato2),
    .s (s),
    .q (salida)
);

initial begin
    dato1 = 0;
    dato2 = 0;
    s = 0;
    #10
    dato1 = 3;
    #10
    s = 1;
    dato2 = $random;
    #10
    dato2= 0;
    repeat(2**ANCHO) begin
        #1
        dato2 = dato2 + 1;
    end
    #10

    $finish;
end

endmodule