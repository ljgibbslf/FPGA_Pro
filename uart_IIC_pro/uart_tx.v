`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        SHU
// Engineer:       ljgibbs@i.shu.edu.cn
// 
// Create Date:    19:44:14 07/04/2018 
// Design Name: 
// Module Name:    uart_tx 
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
module uart_tx(
    input rst_n,
    input clk_9600B,
    input [7:0] send_data,
    input send_ena,
    output idle,
    input tx
    );

always@(posedge clk_9600B)

endmodule
