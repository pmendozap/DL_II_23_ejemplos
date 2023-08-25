vlog -sv mux_v3.sv
vlog -sv tb_mux.sv

vsim -voptargs=+acc -t ns -onfinish stop tb_mux  

add wave *


run -all
