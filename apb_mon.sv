class apb_mon;
		apb_tx apb_tx_h;
	virtual apb_interface apb_intf_h;// Physical interface in class is not allowed 
	
		


			      //to convert them we use virtual
	task run;
	forever begin

	apb_intf_h=apb_config_db::cfg_intf_h;
	apb_tx_h=new();
		//	convert pinwiggle to transcation
	@(posedge apb_intf_h.MONITOR.pclk);

	apb_tx_h.paddr  	=apb_intf_h.MONITOR.paddr;
	apb_tx_h.pwrite 	=apb_intf_h.MONITOR.pwrite;
	apb_tx_h.pwdata 	=apb_intf_h.MONITOR.pwdata;
	apb_tx_h.penable	=apb_intf_h.MONITOR.penable;
	apb_tx_h.pselx  	=apb_intf_h.MONITOR.pselx;
	apb_tx_h.prdata	 	=apb_intf_h.MONITOR.prdata;
	apb_tx_h.pready 	=apb_intf_h.MONITOR.pready;
	apb_tx_h.pslave_error	=apb_intf_h.MONITOR.pslave_error;
	
		$display("MONITOR_statred");
			apb_tx_h.display();	
		$display("MONITOR_ended");
	apb_config_db::mon2scb.put(apb_tx_h);
	
end
	endtask

endclass
