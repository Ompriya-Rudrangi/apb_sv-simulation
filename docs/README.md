# APB Simulation Project

This is my first GitHub project — a complete APB protocol simulation using SystemVerilog and QuestaSim 
with help of ubuntu(linux).

##  Features
- APB interface (`apb_interface.sv`)
- DUT and environment setup
- Configurable testbench
- Waveform viewer integration
- Makefile-style automation

## project structure
apb_linux/ ├── apb_interface.sv ├── apb_config_db.sv ├── apb_bfm.sv ├── apb_dut.sv ├── apb_mon.sv ├── apb_tx.sv ├── apb_gen.sv ├── apb_scb.sv ├── apb_env.sv ├── apb_test.sv ├── apb_tb_top.sv ├── top.svh ├── Makefile.sh ├── waveform.do (optional) └── README.md


##  How to Run the Simulation 

1. Open your terminal in the project folder:
   ```bash
   cd /mnt/c/MasterVlsi/apb/apb_sir/apb_linux
         source  Makefile.sh


##  Waveform Setup 

Includes automatic signal grouping and color-coded interface signals.

 To customize waveform layout, edit `waveform.do`.


## Tools Used- SystemVerilog for design and verification

- QuestaSim 10.4e for simulation
- WSL (Ubuntu) for Linux-based scripting
- Git for version control
- GitHub for project hosting
 

## Author  Om Priya
Design Verification Engineer
B.Tech in Electronics and Communication Engineering
MasterVLSI Institute — Design Verification Training ----.



