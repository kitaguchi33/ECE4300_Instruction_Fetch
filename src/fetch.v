`timescale 1ns / 1ps

module fetch(
    input wire clk, rst, ex_mem_pc_src,
    input wire [31:0] ex_mem_npc,
    output wire [31:0] if_id_instr, if_id_npc
    );

//internal
wire [31:0] pc_out, pc_mux, next_pc, instr_data;

    if_Mux m0(
        .out(next_pc),
        .in0(pc_mux),
        .in1(ex_mem_npc),
        .sel(ex_mem_pc_src)
    );
    
    pc pc0(
        .pc_in(next_pc),
        .pc_out(pc_out),
        .rst(rst),
        .clk(clk)
    );
    
    incrementer in0(
        .pc_in(pc_out),
        .pc_out(pc_mux)
    );
    
    instrMem inMem0(
        .clk(clk),
        .rst(rst),
        .addr(pc_out),
        .data(instr_data)
    );
    
    ifIdLatch ifIdLatch0(
        .clk(clk),
        .rst(rst),
        .pc_in(pc_mux),
        .instr_in(instr_data),
        .pc_out(if_id_npc),
        .instr_out(if_id_instr)
    );

endmodule
