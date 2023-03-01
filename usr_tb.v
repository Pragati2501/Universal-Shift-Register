`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:27:40 09/23/2022
// Design Name:   univ_shift_reg
// Module Name:   C:/Users/DELL/Documents/newbie/universal_shift_register/usr_tb.v
// Project Name:  universal_shift_register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: univ_shift_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module usr_tb;

	// Inputs
	reg clr;
	reg clk;
	reg left_in;
	reg right_in;
	reg [1:0] sel;
	reg [7:0] data_in;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	univ_shift_reg uut (
		.clr(clr), 
		.clk(clk), 
		.left_in(left_in), 
		.right_in(right_in), 
		.sel(sel), 
		.data_in(data_in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clr = 0;
		clk = 0;
		left_in = 0;
		right_in = 0;
		sel = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clr = 1'b1;
		#10;
		
		clr = 1'b0;
		#40;
		
		right_in = 1'b1;
		sel = 2'b01;
		#40;
		
		left_in = 1'b1;
		sel = 2'b10;
		#40;
		
		data_in = 8'b01110011;
		sel = 2'b11;
		
		

	end
	always clk = #5 ~clk;
      
endmodule

