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
output reg [3:0] one_sec,
//output reg divide_ten,
output reg [3:0] zero_dot_one,
output reg [3:0] seven_select
    );
    
    //integer counter_1;
    reg [31:0] counter_1;
    reg [31:0] counter_2;
    reg [31:0] counter_3;
    reg divide_ten;
    reg [3:0] zero_dot_one;
    
    initial
    begin
        divide_ten = 0;
        one_sec = 0;
        zero_dot_one = 0;
        seven_select = 0;
    end
    
    always@(posedge clk_5M or posedge resetn)
    begin
        if(!resetn)
        begin 
            counter_1 <= 0;
            divide_ten <= 0;
        end
        else
        begin
            if(counter_1 < 5000000) 
            begin
                counter_1 <= counter_1 + 1;
                divide_ten = 0;
            end
            else
            begin
                if(one_sec > 8) one_sec <= 0;
                else one_sec <= one_sec + 1;
                counter_1 <= 0; 
            end
        end
    end    
    
    /*
    always@(posedge clk_5M or posedge resetn)
    begin
        if(!resetn) 
        begin
            counter_2 <= 0;
        end
        
        else
        begin
            if(divide_ten)
            begin      
                 one_sec <= one_sec + 1;
                 if(one_sec > 8)
                 begin
                    one_sec <= 0;
                 end
                 else
                 begin
                    one_sec <= one_sec + 1;
                 end
            end    
        end 
    end
    */
    always@(posedge clk_5M or posedge resetn)
    begin
         if(!resetn) 
         begin
            counter_3 <= 0;
         end
        
         else
         begin
             if(counter_3 > 5000000)
             begin
                if(seven_select > 6) seven_select = 0;
                else seven_select = seven_select + 1;
                
                counter_3 <= 0;
             end
             else
             begin
                counter_3 <= counter_3 + 1;
             end
         end
    end
endmodule
