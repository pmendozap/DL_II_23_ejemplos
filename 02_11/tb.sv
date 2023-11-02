`timescale 1ns/1ps
module tb;

 logic         clk = 0;
 logic         rst = 0;
  
 logic         inicio = 0;
 logic [2:0]   n = 0;
 logic [12:0] salida;
 logic        fin;

sistema DUT(
 .clk(clk),
 .rst (rst),
 .inicio(inicio),
 .n(n),
 .salida(salida),
 .fin(fin) 
);

initial forever #1 clk = ~clk;

initial #20 @(posedge clk) rst <= 1;

initial begin
  @(posedge rst);
  repeat(8) begin
    @(posedge clk);
    inicio <= 1;
    @(posedge fin);
    @(posedge clk);
    @(posedge clk);
    inicio <= 0;
    n <= n + 1;
    @(posedge clk);
  end
  @(posedge clk);
  @(posedge clk);
  $finish;
end

endmodule
