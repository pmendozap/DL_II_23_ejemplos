module multiplica_un_bit (
        input logic [1:0]   x,  //2 bits
        input logic         y,  //1 bit
        output logic [1:0]  z  //2 bits
    );

    always_comb begin 
        if(y==0) begin
            z = 2'b00;
        end else begin 
            z = x;
        end
    end

    /*always_comb begin
        z[0] =  y & x[0];
        z[1] =  y & x[1];
    end*/

endmodule