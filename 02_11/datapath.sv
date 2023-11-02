module datapath (
  input logic clk,
  input logic rst,
  
  input logic [2:0] n,

  input logic inic,
  input logic habilita_c,
  input logic fuente,
  input logic cargar,
  
  output logic comp,
  output logic [12:0] salida
);


logic [3:0] cuenta;
logic [12:0] producto;
logic [12:0] salida_mux;


//contador
always_ff @(posedge clk) begin
  if(!rst) cuenta <= '0;
  else begin
    if(habilita_c) begin
      if(inic) cuenta <= 4'd1;
      else     cuenta <= cuenta + 4'd1;
    end
  end
end

//comparador

always_comb begin
  if(n<cuenta) comp = 1;
  else         comp = 0;
end


//multiplicador
assign producto = cuenta*salida;

//mux
assign salida_mux = fuente?13'd1:producto;

//registro

always_ff @(posedge clk) begin
  if(!rst) salida <= '0;
  else begin
    if(cargar) salida <= salida_mux;
  end
end






endmodule
