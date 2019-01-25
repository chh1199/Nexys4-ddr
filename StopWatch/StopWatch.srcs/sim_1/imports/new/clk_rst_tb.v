`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/22 16:00:46
// Design Name: 
// Module Name: clk_rst_tb
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


module clk_rst_tb(
        output reg clk_100M,
        output reg reset
    );
    initial
    begin
     clk_100M = 0;
    end
     
    always
     #10 clk_100M = ~ clk_100M; 
    
    initial
    begin
        reset = 1;
        #100 reset = 0;
        #1000 reset = 1;
    end
endmodule
