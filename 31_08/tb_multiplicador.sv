`timescale 1ns/1ps
module tb_multiplicador;
//variables de estimulo
logic [1:0] operando_a;
logic [1:0] operando_b;

//variables de salida
logic [3:0] resultado;

//instancia del bloque
multiplicador DUT(
    .a_i    (operando_a),
    .b_i    (operando_b),

    .m_o    (resultado)
);

//generacion de estimulos

initial begin
    operando_a = 0;
    operando_b = 0;
    #1
    repeat (100) begin
        operando_a = $random;
        operando_b = $random;
        #1
        $display("%d x %d = %d  -- %b x %b = %b", 
                                 operando_a, 
                                 operando_b, 
                                 resultado,
                                 operando_a, 
                                 operando_b, 
                                 resultado);
    end
    #1
    $finish;
end

endmodule
