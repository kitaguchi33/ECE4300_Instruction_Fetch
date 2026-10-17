`timescale 1ns / 1ps

module I_FETCHTB;

    reg clk_tb, rst_tb, ex_mem_pc_src_tb;
    reg [31:0] ex_mem_npc_tb;
    wire [31:0] if_id_instr_tb, if_id_npc_tb;

    fetch DUT (
        clk_tb,
        rst_tb,
        ex_mem_pc_src_tb,
        ex_mem_npc_tb,
        if_id_instr_tb,
        if_id_npc_tb
    );

    initial  clk_tb <= 0;
    always #1 clk_tb = ~clk_tb;

     initial begin
           rst_tb = 1;
           ex_mem_pc_src_tb <= 0;
           ex_mem_npc_tb <= 32'hFFFFFFFF;
    
           #20;
    
           ex_mem_npc_tb <= 32'h00000000;
           ex_mem_pc_src_tb <= 1;
    
           #50;

           ex_mem_pc_src_tb <= 0;
    
           #30;
    
      $finish;

    end


endmodule
