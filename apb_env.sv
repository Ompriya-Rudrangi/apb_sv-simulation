class apb_env;

	apb_gen apb_gen_h;
	apb_bfm apb_bfm_h;
	apb_scb apb_scb_h;
	apb_mon apb_mon_h;

	function new();
		apb_gen_h=new();
		apb_bfm_h=new();
		apb_scb_h=new();
		apb_mon_h=new();
	endfunction
	task env_run();
	begin
		fork

		apb_gen_h.run;
		apb_bfm_h.run;
		apb_mon_h.run;
		apb_scb_h.run;
	      join
          end
	endtask
endclass
