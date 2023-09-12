`timescale 1ns/1ps

module bloque(
  input logic a,b,
  output logic q
);

assign q = ~(a & b);

endmodule