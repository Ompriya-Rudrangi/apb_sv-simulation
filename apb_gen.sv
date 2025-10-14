class apb_gen;
	apb_tx apb_tx_h;
//	function new();
//		repeat(5) begin
//		apb_tx_h=new();
//	end
//	endfunction


	task run;
		repeat(5) begin
		apb_tx_h=new();
		apb_tx_h.randomize();
		apb_config_db::gen2bfm.put(apb_tx_h);
	        end
	endtask
endclass


//To access the property or we have 3 operators
//.  -> To access property (static and non static)
//		  method (static(function and task) and non_static
//		  (function/task)
//=  -> only to access the constructor
//:: -> only u can access the static property and static method
