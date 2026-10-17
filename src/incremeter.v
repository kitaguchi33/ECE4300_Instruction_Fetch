`timescale 1ns / 1ps

module incrementer(
    output [31:0] pc_out,
    input [31:0] pc_in
    );
    
    // Need a wire to carry the 1 through each half adder
    wire [32:0] carry; 
    assign carry[0] = 1;
    
    // Generates 32 half adders that keeps carrying the 1 across the 32 bit input
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin
            assign pc_out[i] = pc_in[i] ^ carry[i];
            assign carry[i+1] = pc_in[i] & carry[i];
        end
    endgenerate
    
endmodule
