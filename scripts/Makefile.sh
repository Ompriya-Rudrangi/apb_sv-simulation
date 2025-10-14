#!/bin/bash

# Create and map the library
vlib work
vmap work work

# Compile all SystemVerilog files
vlog top.svh \
     apb_interface.sv \
     apb_config_db.sv \
     apb_bfm.sv \
     apb_dut.sv \
     apb_mon.sv \
     apb_tx.sv \
     apb_gen.sv \
     apb_scb.sv \
     apb_env.sv \
     apb_test.sv \
     apb_tb_top.sv

# Launch simulation
vsim -voptargs=+acc work.apb_tb_top

#launch simulation with waveform 
vsim -gui -voptargs=+acc work.apb_tb_top -do "
view wave
add wave -r *
run -all
"
