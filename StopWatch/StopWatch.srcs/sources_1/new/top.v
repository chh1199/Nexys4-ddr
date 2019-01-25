`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/24 16:06:58
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
    output CA,CB,CC,CD,CE,CF,CG,
    output AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7,
    output reg testprobe
 );
 
    wire clk_5M; 
    wire [3:0] one_sec, zero_dot_one, seven_select;
    wire testprobe;

    clk_5MHZ U1(clk_5M,CPU_RESETN,CLK100MHZ);
    counter U2(clk_5M, CPU_RESETN,one_sec, zero_dot_one, seven_select );
    seven_display U3(clk_5M, one_sec,/*zero_dot_one*/seven_select , CPU_RESETN, CA,CB,CC,CD,CE,CF,CG, AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7);
 
    //assign testprobe = one_sec;
    
endmodule
