transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/jack_/Documents/Rowan/Complex Digital Systems/ADS/Lab 1/part2.vhd}

vcom -93 -work work {C:/Users/jack_/Documents/Rowan/Complex Digital Systems/ADS/Lab 1/lab1_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  lab1_tb

add wave *
view structure
view signals
run -all
