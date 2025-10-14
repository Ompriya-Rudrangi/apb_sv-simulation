class apb_scb;
	apb_tx apb_tx_h;
	task run;
		forever begin
		apb_tx_h=new();
	
		apb_config_db::mon2scb.get(apb_tx_h);
		$display("scb start");
		apb_tx_h.display();
		$display("scb_end");
	end
	endtask
endclass
