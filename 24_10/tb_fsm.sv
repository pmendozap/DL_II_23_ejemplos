`timescale 1ns/1ps
module tb_fsm;

logic   clk = 0;
logic   rst = 0;
logic   in = 0;
logic   q; 

fsm1 dut(
.clk  (clk),
.rst  (rst),
.in   (in),
.q    (q));

initial forever #5 clk = ~clk;

initial begin
  @(posedge clk);
  @(posedge clk);
  rst <= 1;
  @(posedge clk);
  repeat(100) begin
    @(posedge clk);
    in <= $random%2;
  end
  @(posedge clk);
  @(posedge clk);
  $finish;
end

endmodule
