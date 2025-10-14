class apb_tx;
rand bit [31:0] paddr;//int paddr
rand bit [31:0] pwdata;
rand bit pwrite;
rand bit pselx;
rand bit penable;
     bit [31:0] prdata;
     bit pslave_error;
     bit pready;
     function void display();
	     $display("##########################Tx_started####################");
$display("paddr       	=%d",paddr);
$display("pwrite      	=%d",pwrite);
$display("pwdata      	=%d",pwdata);
$display("penable     	=%d",penable);
$display("pselx       	=%d",pselx);
$display("prdata	=%d",prdata);
$display("pready      	=%d",pready);
$display("pslave_error	=%d",pslave_error);
	     $display("##########################Tx_Ended####################");

endfunction
endclass      
