transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/alu.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/dff32.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/lpm_ram_dq_dram.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/lpm_rom_irom.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/mux2x5.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/mux2x32.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/mux4x32.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/regfile.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/sc_computer.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/sc_cpu.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/sc_cu.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/sc_datamem.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/sc_instmen.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/io_output_reg.v}
vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer/source {D:/Software/altera/sc/sc_computer/source/io_input_reg.v}

vlog -vlog01compat -work work +incdir+D:/Software/altera/sc/sc_computer {D:/Software/altera/sc/sc_computer/sc_computer_sim.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  sc_computer_sim

add wave *
view structure
view signals
run -all
