module error_comb_1(
	input logic [1:0] sel,
	input logic a, b, c,
	output logic z);


always @(*) begin
  //z = 0;  
  case(sel)
    2'b00: z = a;
    2'b01: z = b;
    2'b10: z = c;
    //default: z = 0;
  endcase
end

endmodule
