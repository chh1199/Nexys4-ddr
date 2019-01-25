`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/22 15:23:08
// Design Name: 
// Module Name: counter
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


module counter( 
input clk_5M,
input resetn,
output reg [3:0] one_sec
    );
    
    //integer counter_1;
    reg [31:0] counter_1;
    reg [1:0] counter_2;
    reg half_sec;
    initial
    begin
        half_sec = 0;
        one_sec = 0;
    end
    always@(posedge clk_5M or posedge resetn)
    begin
        if(!resetn)
        begin 
            counter_1 <= 0;
            half_sec <= 0;
        end
        else
        begin
        if(counter_1 < 2500000) 
        begin
            counter_1 <= counter_1 + 1;
            half_sec <= 0; 
        end
        else
        begin
            counter_1 <= 0;
            half_sec <= 1; 
        end
    end
end    
    
    
    always@(posedge clk_5M or posedge resetn)
    begin
        if(!resetn) 
        begin
        counter_2 <= 0;
        one_sec <= 0;
        end
        else
        begin
            if(half_sec)
            begin
                if(counter_2 < 1) 
                begin
                counter_2 <= counter_2 + 1;
                end
                else
                begin
                    counter_2 <= 0;
                    one_sec <= one_sec + 1;
                    if(one_sec > 8) 
                    begin
                        one_sec <= 0;
                    end
                end    
            end
        end 
     end
    
endmodule
