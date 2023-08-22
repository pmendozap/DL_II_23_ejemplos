module sistema (
	input logic   a,
	input logic   b,
	input logic   c,
	output logic  z);

   assign z = (a & (~b))|c;

endmodule
