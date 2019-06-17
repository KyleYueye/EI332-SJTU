transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/sevenseg.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/rom.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/regfile.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/ram.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipepc.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipemwreg.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipemem.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipelined_computer.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipeir.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipeif.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipeid.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipeexe.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipeemreg.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipedereg.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipecu.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/mux4x32.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/mux2x32.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/io_output_reg.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/io_input_reg.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/io_input_mux.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/alu.v}

vlog -vlog01compat -work work +incdir+D:/Software/altera/pipeline {D:/Software/altera/pipeline/pipesim.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  pipecomputer_sim

add wave *
view structure
view signals
run -all
