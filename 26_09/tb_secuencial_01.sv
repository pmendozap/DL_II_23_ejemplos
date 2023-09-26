`timescale 1ns/1ps
module tb_secuencial_01;
//variables de entrada
	logic clk = 0;
	logic rst = 0;
	logic [1:0] sel =0;
 	logic enable =0;
	logic a = 0;
	logic b = 0;
	logic c = 0;
//variables de salida
	logic z;

secuencial_01 DUT(
.clk	(clk),
.rst	(rst),
.sel	(sel),
.enable	(enable),
.a	(a), 
.b	(b), 
.c	(c),
.z	(z));


initial forever #5 clk = ~clk;

initial begin
	repeat(3) @(posedge clk);
	#1;
	rst <= 1;
	@(posedge clk);
	#1 a = 1;
	#21
	a = 0;
	#20;
	a = 1;
	enable = 1;
	#20;
	$finish;
end

endmodule
