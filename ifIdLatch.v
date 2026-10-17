`timescale 1ns / 1ps

module ifIdLatch(
    output reg [31:0] pc_out, instr_out,
    input wire [31:0] pc_in, instr_in,
    input wire clk, clr
);

    always @(posedge clk or negedge clr) begin
        if (!clr) begin
            pc_out    <= 32'h00000000;
            instr_out <= 32'h00000000;
        end
        else begin
            pc_out    <= pc_in;
            instr_out <= instr_in;
        end
    end
