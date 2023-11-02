module sistema(
  input logic         clk,
  input logic         rst,
  
  input logic         inicio,
  input logic [2:0]   n,
  output logic [12:0] salida,
  output logic        fin
);



  logic inic;
  logic habilita_c;
  logic fuente;
  logic cargar;

  logic comp;
  
datapath DATA(
  .clk (clk),
  .rst (rst),
  
  .n  (n),

  .inic (inic),
  .habilita_c (habilita_c),
  .fuente (fuente),
  .cargar (cargar),
  
  .comp (comp),
  .salida (salida)
);

fsm FSM0( .clk (clk),
          .rst (rst),
  
  .inicio  (inicio),
  .comp (comp),

  .inic (inic),
  .habilita_c (habilita_c),
  .fuente (fuente),
  .cargar (cargar),
  
  .fin (fin)
  );


endmodule


