`timescale 1ns / 1ps

module pc(
    output reg [31:0] pc_out,
    input [31:0] pc_in,
    input CLR, CLK
    );
    
// Assign to output on positive edge of the clock
    always @ (posedge CLK or negedge CLR)
    if(!CLR)
        pc_out <= 0;
    else
        pc_out <= pc_in;

endmodule
