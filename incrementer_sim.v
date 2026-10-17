`timescale 1ns / 1ps

   module incrementer_sim();

    wire [31:0] pc_out;
    reg [31:0] pc_in;
    
    incrementer dut(pc_out, pc_in);
    
    initial begin
    // Test 1: 15++
    pc_in = 32'd15;
    #100;
    
    pc_in = 32'd0;
    #100;
    
    pc_in = 32'd255;
    #100;
    
    $finish;
    end
    
endmodule
