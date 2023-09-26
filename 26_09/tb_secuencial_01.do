vlog -sv secuencial_01.sv
vlog -sv tb_secuencial_01.sv

vsim -voptargs=+acc -t ns -onfinish stop tb_secuencial_01  

add wave *


run -all
