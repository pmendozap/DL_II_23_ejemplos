module fsm ( input logic clk,
             input logic rst,

             input logic inicio,
             input logic comp,
             
             output logic inic,
             output logic habilita_c,
             output logic fuente,
             output logic cargar,
             output logic fin);
             
  enum logic [1:0] {
    ESPERE_INICIO,
    CALCULAR,
    FINALIZAR } estado, sig_estado;
    

  always_ff @(posedge clk) begin
    if(!rst) estado <= ESPERE_INICIO;
    else estado <= sig_estado;
  end


  //logica de siguiente estado  
  always_comb begin
    case(estado)
      ESPERE_INICIO:
        if(!inicio) sig_estado = ESPERE_INICIO;
        else        sig_estado = CALCULAR;
      CALCULAR:
        if(!comp)   sig_estado = CALCULAR;
        else        sig_estado = FINALIZAR;
      FINALIZAR:
        if(inicio)  sig_estado = FINALIZAR;
        else        sig_estado = ESPERE_INICIO;
      default:
        sig_estado = ESPERE_INICIO;
    endcase
  end
  
  //logica de salida
  always_comb begin
    inic = 0;
    habilita_c = 0;
    fuente = 0;
    cargar = 0;
    fin = 0;
    case(estado)
      ESPERE_INICIO:
        if(inicio) begin
          {inic, habilita_c, fuente, cargar} = 4'b1111;
        end
      CALCULAR:
        if(!comp) {inic, habilita_c, fuente, cargar} = 4'b0101;
        else fin  = 1;
      FINALIZAR:
        if(inicio) fin = 1;
    endcase
  end
  
endmodule
