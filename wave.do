onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group tb_top /apb_tb_top/pclk
add wave -noupdate -expand -group tb_top /apb_tb_top/presetn
add wave -noupdate -expand -group intf -color Gold -itemcolor Gold /apb_tb_top/apb_intf_h/pclk
add wave -noupdate -expand -group intf -color Gold -itemcolor Gold /apb_tb_top/apb_intf_h/presetn
add wave -noupdate -expand -group intf -color Gold -itemcolor Gold /apb_tb_top/apb_intf_h/paddr
add wave -noupdate -expand -group intf -color Gold -itemcolor Gold /apb_tb_top/apb_intf_h/pwdata
add wave -noupdate -expand -group intf -color Gold -itemcolor Gold /apb_tb_top/apb_intf_h/pwrite
add wave -noupdate -expand -group intf -color Gold -itemcolor Gold /apb_tb_top/apb_intf_h/pselx
add wave -noupdate -expand -group intf -color Gold -itemcolor Gold /apb_tb_top/apb_intf_h/penable
add wave -noupdate -expand -group intf -color Gold -itemcolor Gold /apb_tb_top/apb_intf_h/prdata
add wave -noupdate -expand -group intf -color Gold -itemcolor Gold /apb_tb_top/apb_intf_h/pslave_error
add wave -noupdate -expand -group intf -color Gold -itemcolor Gold /apb_tb_top/apb_intf_h/pready
add wave -noupdate -expand -group {drvier } -color Red -itemcolor White /apb_tb_top/apb_intf_h/driver_cb/pready
add wave -noupdate -expand -group {drvier } -color Red -itemcolor White /apb_tb_top/apb_intf_h/driver_cb/prdata
add wave -noupdate -expand -group {drvier } -color Red -itemcolor White /apb_tb_top/apb_intf_h/driver_cb/pslave_error
add wave -noupdate -expand -group {drvier } -color Red -itemcolor White /apb_tb_top/apb_intf_h/driver_cb/penable
add wave -noupdate -expand -group {drvier } -color Red -itemcolor White /apb_tb_top/apb_intf_h/driver_cb/pselx
add wave -noupdate -expand -group {drvier } -color Red -itemcolor White /apb_tb_top/apb_intf_h/driver_cb/pwrite
add wave -noupdate -expand -group {drvier } -color Red -itemcolor White /apb_tb_top/apb_intf_h/driver_cb/pwdata
add wave -noupdate -expand -group {drvier } -color Red -itemcolor White /apb_tb_top/apb_intf_h/driver_cb/paddr
add wave -noupdate /apb_tb_top/apb_intf_h/driver_cb/driver_cb_event
add wave -noupdate -expand -group monitor -color {Slate Blue} -itemcolor White /apb_tb_top/apb_intf_h/monitor_cb/pslave_error
add wave -noupdate -expand -group monitor -color {Slate Blue} -itemcolor White /apb_tb_top/apb_intf_h/monitor_cb/pready
add wave -noupdate -expand -group monitor -color {Slate Blue} -itemcolor White /apb_tb_top/apb_intf_h/monitor_cb/prdata
add wave -noupdate -expand -group monitor -color {Slate Blue} -itemcolor White /apb_tb_top/apb_intf_h/monitor_cb/penable
add wave -noupdate -expand -group monitor -color {Slate Blue} -itemcolor White /apb_tb_top/apb_intf_h/monitor_cb/pselx
add wave -noupdate -expand -group monitor -color {Slate Blue} -itemcolor White /apb_tb_top/apb_intf_h/monitor_cb/pwrite
add wave -noupdate -expand -group monitor -color {Slate Blue} -itemcolor White /apb_tb_top/apb_intf_h/monitor_cb/pwdata
add wave -noupdate -expand -group monitor -color {Slate Blue} -itemcolor White /apb_tb_top/apb_intf_h/monitor_cb/paddr
add wave -noupdate /apb_tb_top/apb_intf_h/monitor_cb/monitor_cb_event
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/pclk
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/presetn
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/paddr
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/pwdata
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/prdata
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/pwrite
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/pselx
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/penable
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/pslave_error
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/ptransfer
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/pready
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/state
add wave -noupdate -group dut -color {Medium Orchid} -itemcolor White /apb_tb_top/apb_dut1/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {17 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 359
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {131 ns}
