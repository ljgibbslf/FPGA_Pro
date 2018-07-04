`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:03:47 06/19/2018
// Design Name:   uart_clk
// Module Name:   D:/fpga_pro/Project Probe/uart_IIC_pro/uart_clk_test.v
// Project Name:  uart_IIC_pro
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_clk
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_clk_test;

	// Inputs
	reg clk_50m;

	// Outputs
	wire clk_out;

	// Instantiate the Unit Under Test (UUT)
	uart_clk uut (
		.clk_50m(clk_50m), 
		.clk_out(clk_out)
	);

	initial begin
		// Initialize Inputs
		clk_50m = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #10 clk_50m = ~clk_50m;
endmodule

