vlog -work work -vopt -sv -stats=none D:/UVM_FILES/APB_SV/top.svh
vsim -voptargs=+acc work.apb_tb_top
add wave -position insertpoint sim:/apb_tb_top/apb_intf_h/*
add wave -position insertpoint sim:/apb_tb_top/apb_dut1/*
run -all
