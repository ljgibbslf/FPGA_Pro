`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:12 06/15/2018 
// Design Name: 
// Module Name:    uart_clk 
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
module uart_clk(
    input clk_50m,
    output reg clk_out
    );

//reg clk_out;
reg[15:0] counter=0;

  
always@(posedge clk_50m)
begin
    if(counter == 16'd162)
    begin
        clk_out <= 1'b1;
        counter <= counter + 16'd1;
    end
    else if(counter == 16'd326)
    begin
        clk_out <= 1'b0;
        counter <= 16'd0;
    end
    else
        counter <= counter + 16'd1;
    
end



endmodule
