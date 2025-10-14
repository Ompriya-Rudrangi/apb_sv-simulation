interface apb_interface(input logic pclk,presetn);
	//code related to declare all the signals
logic [31:0] paddr;
logic [31:0] pwdata;
logic pwrite;
logic pselx;
logic penable;
logic [31:0] prdata;
logic pslave_error;
logic pready;
   
//code related to clocking block
clocking driver_cb @(posedge pclk);
	//Amount of time, Input need to be stable "before" the pclk under before
	//the pclk under consideration is called "setup time".
	////Amount of time, Input need to be stable "After" the pclk under before
	//the pclk under consideration is called "HOLD time".
	//output of dut is input of the driver in clocking block
	//input of dut is output of the driver in clockinng block
	default input #1 output #1;
	output paddr;
	output pwdata;
	output pwrite;
	output pselx;
	output penable;
	input prdata;
	input pready;
	input pslave_error;

endclocking

clocking monitor_cb @(posedge pclk);
	//input and output of the dut refers as input if the monitor
	default input #1 output #1;
	input paddr;
	input pwdata;
	input pwrite;
	input pselx;
	input penable;
	input prdata;
	input pready;
	input pslave_error;
endclocking
//clocking block for testbench-for synchrnous
//modport for test bench-asynchronious
modport DRIVER (clocking driver_cb,input pclk,presetn);
//modport DRIVER (input pclk,reset,prdata,pready,pslave_error,output paddr,pwrite,pselx,penable,pwdata);
modport MONITOR (clocking monitor_cb,input pclk,presetn);
endinterface: apb_interface 
