`timescale 1ns / 1ps

 module pc_sim();
    reg [31:0] pc_in;
    reg CLR, CLK=0;
    wire [31:0] pc_out;
    
    pc dut(pc_out, pc_in, CLR, CLK);
    
    // Simulation
    initial forever #5 CLK = ~CLK;
    
    initial begin
    
    pc_in = 32'd0; CLR = 0;
    
    #40 pc_in = 32'd123; CLR = 1;
    #40 pc_in = 32'd123456;
    #40 pc_in = 32'd123123; CLR = 0;
    #40 pc_in = 32'd22222; CLR = 1;
    
    #40 $finish;
    end
endmodule
