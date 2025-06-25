class yapp_tx_driver extends uvm_driver #(yapp_packet);
    `uvm_component_utils(yapp_tx_driver)
    function new(string name , uvm_component parent);
        super.new(name, parent);
    endfunction //new()
    function void start_of_simulation_phase(uvm_phase phase);
        `uvm_info(get_type_name(), "Now in the start of simulation phase for driver", UVM_HIGH)        
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            seq_item_port.get_next_item(req);
            sent_to_dut(req);
            seq_item_port.item_done();
        end
    endtask

    task sent_to_dut(yapp_packet req1);
        `uvm_info(get_type_name(), $sformatf("Packet is \n%s", req1.sprint()), UVM_LOW)
        #10;
    endtask
endclass //yapp_tx_driver extends uvm_driver