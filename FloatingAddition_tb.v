`timescale 1ns/1ps

module FloatingAddition_tb;

    // Parameters
    parameter XLEN = 32;

    // Inputs
    reg [XLEN-1:0] A;
    reg [XLEN-1:0] B;
    reg clk;

    // Outputs
    wire overflow;
    wire underflow;
    wire exception;
    wire [XLEN-1:0] result;

    // Instantiate the unit under test (UUT)
    FloatingAddition #(XLEN) uut (
        .A(A),
        .B(B),
        .result(result)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test stimulus
    initial begin
        $dumpfile("FloatingAddition_tb.vcd");
        $dumpvars(0, FloatingAddition_tb);

        // Test case 1
//        A = 32'h3dc00000; // 0.09
//        B = 32'hbd900001; // -0.07
          A = 32'hbd900001; // -0.07
          B = 32'h3dc00000; // 0.09
        #10;

//        // Test case 2
//        A = 32'b01000000100000000000000000000000; // 0.5
//        B = 32'b11000000000000000000000000000000; // 0.2
//        #10;

        // Add more test cases as needed...

        // End simulation
        $finish;
    end

endmodule
