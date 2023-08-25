vlog -sv sistema.sv
vlog -sv tb_sistema.sv

#vsim -voptargs=+acc -t ns -onfinish stop tb_sistema 
vsim -voptargs=+acc -t ns tb_sistema 

#vopt -access=rw+
#add wave *
#source wave.do

if { [ file exists ./wave.do ] == 1 } {
    source wave.do
} else {
    add wave *
}


run -all
