`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/24 14:03:37
// Design Name: 
// Module Name: switch_input
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


module switch_input(
input clk_5M,
input  resetn,
output reg[0:9] swt
    );
    
    initial 
    begin
        swt[0] = 0;
        swt[1] = 0;
        swt[2] = 0;
        swt[3] = 0;
        swt[4] = 0;
        swt[5] = 0;
        swt[6] = 0;
        swt[7] = 0;
        swt[8] = 0;
        swt[9] = 0;
    end
     
    
    always@(posedge clk_5M or negedge resetn)
        begin
        if(!resetn) 
        begin
            swt[0] = 0;
            swt[1] = 0;
            swt[2] = 0;
            swt[3] = 0;
            swt[4] = 0;
            swt[5] = 0;
            swt[6] = 0;
            swt[7] = 0;
            swt[8] = 0;
            swt[9] = 0;
        end
    
        else
        begin
           #50 swt[0] = 1; swt[1] = 0; swt[2] = 0; swt[3] = 0; swt[4] = 0; swt[5] = 0; swt[6] = 0; swt[7] = 0; swt[8] = 0; swt[9] = 0;
           #50 swt[0] = 0; swt[1] = 1; swt[2] = 0; swt[3] = 0; swt[4] = 0; swt[5] = 0; swt[6] = 0; swt[7] = 0; swt[8] = 0; swt[9] = 0;
           #50 swt[0] = 0; swt[1] = 0; swt[2] = 1; swt[3] = 0; swt[4] = 0; swt[5] = 0; swt[6] = 0; swt[7] = 0; swt[8] = 0; swt[9] = 0;
           #50 swt[0] = 0; swt[1] = 0; swt[2] = 0; swt[3] = 1; swt[4] = 0; swt[5] = 0; swt[6] = 0; swt[7] = 0; swt[8] = 0; swt[9] = 0;
           #50 swt[0] = 0; swt[1] = 0; swt[2] = 0; swt[3] = 0; swt[4] = 1; swt[5] = 0; swt[6] = 0; swt[7] = 0; swt[8] = 0; swt[9] = 0;
           #50 swt[0] = 0; swt[1] = 0; swt[2] = 0; swt[3] = 0; swt[4] = 0; swt[5] = 1; swt[6] = 0; swt[7] = 0; swt[8] = 0; swt[9] = 0;
           #50 swt[0] = 0; swt[1] = 0; swt[2] = 0; swt[3] = 0; swt[4] = 0; swt[5] = 0; swt[6] = 1; swt[7] = 0; swt[8] = 0; swt[9] = 0;
           #50 swt[0] = 0; swt[1] = 0; swt[2] = 0; swt[3] = 0; swt[4] = 0; swt[5] = 0; swt[6] = 0; swt[7] = 1; swt[8] = 0; swt[9] = 0;
           #50 swt[0] = 0; swt[1] = 0; swt[2] = 0; swt[3] = 0; swt[4] = 0; swt[5] = 0; swt[6] = 0; swt[7] = 0; swt[8] = 1; swt[9] = 0;
           #50 swt[0] = 0; swt[1] = 0; swt[2] = 0; swt[3] = 0; swt[4] = 0; swt[5] = 0; swt[6] = 0; swt[7] = 0; swt[8] = 0; swt[9] = 1;
        end
    end

endmodule
