`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:08:12 09/23/2022 
// Design Name: 
// Module Name:    univ_shift_reg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module univ_shift_reg(clr, clk , left_in, right_in, sel, data_in , out );
input clr,clk,left_in,right_in;
input [1:0]sel;
input [7:0]data_in;

output reg [7:0]out;

//behavioural modelling style

always@(posedge clk)

begin
if(clr)
out = 8'b00000000;
else
begin
case(sel)
2'b00 : out = out; //no change
2'b01 : out = {right_in, out[7:1]};//right shift
2'b10 : out = {out[6:0], left_in};//left shift
2'b11 : out = data_in;// parallel load
endcase
end
end

endmodule
