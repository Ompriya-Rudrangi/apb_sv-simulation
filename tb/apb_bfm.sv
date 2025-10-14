
class apb_bfm;
	apb_tx apb_tx_h;

	virtual apb_interface apb_intf_h;// Physical interface in class is not allowed 
				      //to convert them we use virtual
      

	task run;
		//transcation to pinwiggle
		//paddr,pwrite,penable,pwdata,prdata

		forever begin
		apb_intf_h=apb_config_db::cfg_intf_h;//class contains propeties and methods so we don't write directly inside of the class
		apb_config_db::gen2bfm.get(apb_tx_h);    					//insted we write
	@(posedge apb_intf_h.DRIVER.pclk);
//	apb_tx_h.display();	//inside of the	method
	$display("BFM_started");	
	apb_intf_h.DRIVER.paddr 		<=apb_tx_h.paddr;
	apb_intf_h.DRIVER.pwrite		<=apb_tx_h.pwrite;
	apb_intf_h.DRIVER.pwdata 		<=apb_tx_h.pwdata;
	apb_intf_h.DRIVER.pselx		        <=apb_tx_h.pselx;
        @(posedge apb_intf_h.DRIVER.pclk);
	apb_intf_h.DRIVER.penable		<=apb_tx_h.penable;
	apb_tx_h.pready			=apb_intf_h.pready;
	apb_tx_h.prdata			=apb_intf_h.prdata;
	apb_tx_h.pslave_error		=apb_intf_h.pslave_error;
	$display("driver code ended");
	end
	
	endtask

//	
endclass
