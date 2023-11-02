module fsm1 (
  input logic   clk,
  input logic   rst,
  input logic   in,
  output logic  q );
  
  typedef enum logic [1:0] {
    e_a,
    e_b,
    e_c,
    e_d
  } estado_t;
  
  estado_t estado, siguiente_estado;
  
  always_ff @(posedge clk) begin
    if(!rst) estado <= '0;
    else     estado <= siguiente_estado;
  end
  
  always_comb begin
    case(estado)
      e_a: if(!in) siguiente_estado = e_a;
           else    siguiente_estado = e_b;
      e_b: if(!in) siguiente_estado = e_a;
           else    siguiente_estado = e_c;
      e_c: if(!in) siguiente_estado = e_a;
           else    siguiente_estado = e_d;
      e_d: if(!in) siguiente_estado = e_a;
           else    siguiente_estado = e_b;  
    endcase
  end
  
  always_comb begin
    if(estado == e_d) q = 1;
    else q = 0;
  end
  
endmodule
  
  
  
