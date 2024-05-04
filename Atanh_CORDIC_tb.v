`timescale 1ns / 1ps
// IEEE 754
module Atanh_CORDIC_tb;

    // Signals
    reg [31:0] x_input;
    reg [31:0] y_input;
    wire [31:0] atanh_output;
    
    // Instantiate the Atanh_CORDIC module
    Atanh_CORDIC atanh_inst (
        .x_input(x_input),
        .y_input(y_input),
        .atanh_output(atanh_output)
    );
    
    // Test stimulus
    initial begin
        // Assign inputs
        x_input = 32'b00111111100000000000000000000000; // 1.0
//        y_input = 32'h3f400000; // 0.75 
                
                
//        #100; 
//         y_input = 32'h3f666666; // 0.9
         
//        #100;
//        y_input = 32'h3f4ccccd; // 0.8
                        
                 
//        #100;
//        y_input = 32'h3f19999a; // 0.6
                        
//        #100; 
        y_input = 32'h3f0ccccd; // 0.55
                  
        #100;
                  
        
        // Finish simulation
        $finish;
    end
    
endmodule










//        #100;
//        y_input = 32'h3ecccccd; // 0.4
                                
//        #100; 
//        y_input = 32'h3eb33333; // 0.35
                         
//        #100;
//        y_input = 32'h3e800000; // 0.25
                        
//        #100; 
//        y_input = 32'h3e19999a; // 0.150
                 
//        #100;
//        y_input = 32'h3dfbe76d; // 0.123
                                
//        #100; 
//        y_input = 32'h3d4ccccd; // 0.05
                         
//        #100;
//        y_input = 32'h3c23d70a; // 0.01
                                
//        #100; 
//        y_input = 32'h3a83126f; // 0.001