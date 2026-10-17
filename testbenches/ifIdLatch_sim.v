`timescale 1ns / 1ps

module ifIdLatch_sim();

    reg [31:0] pc_in, instr_in;
    reg clr, clk = 0;
    wire [31:0] pc_out, instr_out;

    ifIdLatch dut(pc_out, instr_out, pc_in, instr_in, clk, clr);
    initial forever #5 clk = ~clk;

    initial begin
        clr = 0;
        pc_in = 32'h00000000;
        instr_in = 32'h00000000;
      
        #10;

        clr = 1;
        pc_in = 32'h00000004;
        instr_in = 32'hA00000AA;

        #10;

        pc_in = 32'h00000008;
        instr_in = 32'hB00000BB;

        #10;

        pc_in = 32'h0000000C;
        instr_in = 32'hC00000CC;

        #10;

        clr = 0;

        #10;

        $finish;
    end

endmodule
