`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2024 23:23:38
// Design Name: 
// Module Name: sigma_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module sigma_tb;

    // Signals
    reg [31:0] y;
    wire [31:0] symbol;
    
    // Instantiate the sigma module
    sigma sigma_inst(
        .y(y),
        .symbol(symbol)
    );
    
    // Test stimulus
    initial begin
        // Test 1: Positive input
        y = 32'b01000000101000000000000000000000; // 5
        #10;
        
        // Test 2: Negative input
        y = 32'b11000000010000000000000000000000; // -3
        #10;
        
        // Finish simulation
        $finish;
    end
    
    // Monitor
    always @(symbol) begin
        $display("y = %h, symbol = %h", y, symbol);
    end
    
endmodule
