vlog -sv multiplica_un_bit.sv
vlog -sv sumador.sv
vlog -sv multiplicador.sv
vlog -sv tb_multiplicador.sv

vsim -voptargs=+acc -t ns -onfinish stop tb_multiplicador
  
add wave *

run -all