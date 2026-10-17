`timescale 1ns / 1ps

module instrMem(
    output reg [31:0] data,
    input [31:0] addr,
    input CLR, CLK
    );
    
    reg [31:0] register [0:63];
    integer i;
    
    initial begin
        for (i = 0; i < 64; i = i+1)
            register[i] = 0;
				
        register[0] = 32'hA00000AA;
        register[1] = 32'h10000011;
        register[2] = 32'h20000022;
        register[3] = 32'h30000033;
        register[4] = 32'h40000044;
        register[5] = 32'h50000055;
        register[6] = 32'h60000066;
        register[7] = 32'h70000077;
        register[8] = 32'h80000088;
        register[9] = 32'h90000099;
    end

	always @ (posedge CLK or negedge CLR) begin
		if (!CLR)
		  data <= 32'h0;
		else
          data <= register[addr];
	end
    
endmodule
