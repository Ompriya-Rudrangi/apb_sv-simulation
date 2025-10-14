module apb_tb_top;
    bit pclk;
    bit presetn;


always #5 pclk=~pclk;

initial begin	
	presetn=0;
        #5 presetn=1;
    end
    //code related to the interface
     apb_interface apb_intf_h(pclk,presetn);
    //code related to test
    apb_test apb_test1();
    //code related to the dut
    apb_dut apb_dut1(
.pclk		(apb_intf_h.pclk),
.presetn	(apb_intf_h.presetn),
.paddr		(apb_intf_h.paddr),
.pwrite		(apb_intf_h.pwrite ),
.pwdata		(apb_intf_h.pwdata ),
.penable	(apb_intf_h.penable),
.pselx	 	(apb_intf_h.pselx),
.prdata		(apb_intf_h.prdata),
.pready		(apb_intf_h.pready),
.pslave_error(apb_intf_h.pslave_error	)
 
	    ); 
    initial
        begin
		apb_config_db::cfg_intf_h=apb_intf_h;
            #500 $finish;
        end 
endmodule
