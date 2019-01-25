`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/24 14:22:38
// Design Name: 
// Module Name: seven_display_tb_top
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


module seven_display_tb_top(
    output CA,CB,CC,CD,CE,CF,CG,
    output AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7
    );
    
    wire clk_5M, reset, clk_100M;
    wire [3:0] one_sec, zero_dot_one, seven_select;
   
    clk_rst_tb U1(clk_100M,reset);
    clk_5MHZ U2(clk_5M,reset,clk_100M);
    counter U3(clk_5M,reset,one_sec, /*zero_dot_one*/zero_dot_one, seven_select);
    seven_display_tb U4(clk_5M, one_sec , /*zero_dot_one*/seven_select, reset,CA,CB,CC,CD,CE,CF,CG, AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7);
    
endmodule
