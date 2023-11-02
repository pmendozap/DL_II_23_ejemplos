vlog -sv fsm.sv
vlog -sv datapath.sv
vlog -sv sistema.sv
vlog -sv tb.sv

vsim -voptargs=+acc -t ns -onfinish stop tb
  
add wave *

run -all
