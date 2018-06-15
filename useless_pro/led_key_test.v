`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        
// Engineer: 		 lifan@shu
// 
// Create Date:    09:38:49 06/15/2018 
// Design Name: 
// Module Name:    led_key_test 
// Project Name:   useless_pro
// Target Devices: XC6SLX45
// Tool versions: 
// Description:    just for exercise without utility
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module led_key_test(
    input rst_n,
    input clk,
	 input  [3:0] key_in,
    output [3:0] led_out
    );
//-----------------------------------
reg[31:0] clk_led;
reg[19:0] clk_key;
//wire[3:0] led_out;
reg[3:0] key_scan;
reg[3:0] key_scan_old;
reg[3:0] led_tmp;
//-----------------------------------
//LED 灯计时
always@(posedge clk or negedge rst_n)
	begin
		if(~rst_n)
			clk_led <= 32'b0;
		else if(clk_led == 32'd199_999_999)
			clk_led <= 32'b0;
		else
			clk_led <= clk_led +32'b1;
	end
//-----------------------------------	
//按键扫描计时
always@(posedge clk or negedge rst_n)
	begin
		if(~rst_n)
			clk_key <= 20'd0;
		else if(clk_key == 20'd999_999)
		begin
			clk_key <= 20'd0;
			 key_scan <= key_in; 
		end
		else
			
			clk_key <= clk_key + 32'b1;
			
	end
//-----------------------------------	
//LED 输出
//always@(posedge clk or negedge rst_n)
//	begin
//		if(~rst_n)
//			led_tmp <= 4'b1111;
//		case(clk_led)
//			//32'd0:      led <= 4'b1111;
//			32'd49_999_999: led_tmp <= 4'b0111;
//			32'd99_999_999: led_tmp <= 4'b1011;
//			32'd149_999_999:led_tmp <= 4'b1101;
//			32'd199_999_999:led_tmp <= 4'b1110;
//		endcase
//	end
//-----------------------------------	
//按键扫描
always@(posedge clk)
	begin
		key_scan_old <= key_scan;
	end


wire[3:0] key_neg_detec = key_scan_old[3:0] & (~key_scan[3:0]);

//-----------------------------------	
//按键控制LED

always@(posedge clk )
	begin
		
		if(key_neg_detec[0])
            led_tmp[0] <= ~led_tmp[0];
            
	end

assign led_out[0] = led_tmp[0];
assign led_out[1] = led_tmp[1];
assign led_out[2] = led_tmp[2];
assign led_out[3] = led_tmp[3];
endmodule