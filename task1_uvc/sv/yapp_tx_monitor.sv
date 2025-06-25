class yapp_tx_monitor extends uvm_monitor;
    `uvm_component_utils(yapp_tx_monitor)
    function new(string name , uvm_component parent);
        super.new(name, parent);
    endfunction //new()
    function void start_of_simulation_phase(uvm_phase phase);
        `uvm_info(get_type_name(), "Now in the start of simulation phase for monitor", UVM_HIGH)        
    endfunction

    task run_phase(uvm_phase phase);
        `uvm_info(get_type_name(), "Now in the Monitor run_phase", UVM_LOW)
    endtask
endclass //yapp_tx_monitor extends uvm_monitor