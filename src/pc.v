`timescale 1ns / 1ps

module pc(
    output reg [31:0] pc_out,
    input [31:0] pc_in,
    input clk, rst
    );
    
// Assign to output on positive edge of the clock
    always @ (posedge clk or negedge rst)
        if(!rst)
        pc_out <= 0;
    else
        pc_out <= pc_in;

endmodule
