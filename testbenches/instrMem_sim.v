`timescale 1ns / 1ps

 module instrMem_sim();

    reg [31:0] addr;
    reg CLR, CLK=0;
    wire [31:0] data;
    
    instrMem dut(data, addr, CLR, CLK);
    integer i;
    
    // Simulation
    initial forever #5 CLK = ~CLK;
    
    initial begin
    addr = 32'h0; CLR = 1;
    
    for (i = 0; i < 9; i = i + 1) begin
		#40 addr = addr + 1;
    end

    #40 $finish;
    end
endmodule
