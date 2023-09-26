module secuencial_01(
	input logic clk,
	input logic rst,
	input logic [1:0] sel,
 	input logic enable,
	input logic a, b, c,
	output logic z);


//always_ff @(posedge clk or negedge rst) begin
always_ff @(posedge clk ) begin
  if(!rst) begin
    z <= 0;
  end else begin
    //z = 0; 
    if(enable) begin
      case(sel)
        2'b00: z <= a;
        2'b01: z <= b;
        2'b10: z <= c;
        //default: z = 0;
      endcase
    end
  end
end

endmodule
