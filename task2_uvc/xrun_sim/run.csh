#!/bin/csh

source ~/cshrc

xrun -access +rwc -uvm -f ../tb/file.f +UVM_TESTNAME=set_config_test -top top -log_xmelab xmelab.log -log_xmsim xmsim.log -timescale 1ns/1ns +SVSEED=random +UVM_VERBOSITY=UVM_HIGH