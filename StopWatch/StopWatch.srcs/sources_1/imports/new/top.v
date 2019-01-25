`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/22 15:26:14
// Design Name: 
// Module Name: top
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


module top(
input CLK100MHZ,
input CPU_RESETN,
output [0:7]led,
input [0:9] swt,
output AN0, AN1,
output testprobe,
output CA,CB,CC,CD,CE,CF,CG
    );
    
    wire clk_5M;
    wire clk_1s, clk_05s;
    wire testprobe;
    
    clk_5MHZ U1( clk_5M, CPU_RESETN,  CLK100MHZ);
    counter U2(clk_5M, CPU_RESETN, clk_1s, clk_05s );
    seven_display U3(clk_5M,clk_1s, CPU_RESETN, swt ,CA,CB,CC,CD,CE,CF,CG,AN0, AN1);
    
    assign tesprobe = clk_1s;
    
    
endmodule
