`timescale 1ns /1ps
module tb_sistema;

logic A,B,C;
logic z;

sistema u1 (
	.a(A),
	.b(B),
	.c(C),
	.z(z)
);



initial begin
	$display("------------------------------------");
	$monitor($time, "A=%b;B=%b;C=%b;z=%b", A,B,C,z);
	A =0;
	B = 0;
	C =0;
	#10 C=1;
	#10 
	$display("------------------------------------");
	$finish;
end


endmodule
