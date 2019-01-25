`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/24 14:25:31
// Design Name: 
// Module Name: seven_display_tb
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


module seven_display_tb(
input clk_5M,
input [3:0] s1,
input [3:0] seven_select,
//input [3:0] s01,
input resetn,
output reg CA,CB,CC,CD,CE,CF,CG,
output reg AN0,
output reg AN1,
output reg AN2,
output reg AN3,
output reg AN4,
output reg AN5,
output reg AN6,
output reg AN7
    );
    
        parameter [0:6] C0 = 7'b0000001;
        parameter [0:6] C1 = 7'b1001111;
        parameter [0:6] C2 = 7'b0010010;
        parameter [0:6] C3 = 7'b0000110;
        parameter [0:6] C4 = 7'b1001100;
        parameter [0:6] C5 = 7'b0100100;
        parameter [0:6] C6 = 7'b1100000;
        parameter [0:6] C7 = 7'b0001111;
        parameter [0:6] C8 = 7'b0000000;
        parameter [0:6] C9 = 7'b0001100;
        initial
        begin
            CA <= 0; CB <= 0; CC <= 0;
            CD <= 0; CE <= 0; CF <= 0;
            CG <= 0;
            AN0 <= 1; AN1 <= 1; AN2 <= 1;
            AN3 <= 1; AN4 <= 1; AN5 <= 1;
            AN6 <= 1; AN7 <= 1;
            
        end
        
always@(posedge clk_5M, negedge resetn)
            begin
             if(!resetn)
               begin
                   CA <= 0; CB <= 0; CC <= 0;
                   CD <= 0; CE <= 0; CF <= 0;
                   CG <= 0;
                   AN0 <= 1; AN1 <= 1; AN2 <= 1;
                   AN3 <= 1; AN4 <= 1; AN5 <= 1;
                   AN6 <= 1; AN7 <= 1;
               end
              else
                begin
                case(s1)                  
                0 : 
                    begin
                        CA <= 0; CB <= 0; CC <= 0;  CD <= 0; CE <= 0;  CF <= 0; CG <= 1;
                        //AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                1 :        
                    begin
                        CA <= 1; CB <= 0; CC <= 0;  CD <= 1; CE <= 1;  CF <= 1; CG <= 1;
                        //AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                2 :
                    begin
                        CA <= 0; CB <= 0; CC <= 1;  CD <= 0; CE <= 0;  CF <= 1; CG <= 0;
                        //AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                3 :
                    begin
                        CA <= 0; CB <= 0; CC <= 0;  CD <= 0; CE <= 1;  CF <= 1; CG <= 0;
                       //AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                4 :
                    begin
                        CA <= 1; CB <= 0; CC <= 0;  CD <= 1; CE <= 1;  CF <= 0; CG <= 0;
                        //AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                5 :
                    begin
                        CA <= 0; CB <= 1; CC <= 0;  CD <= 0; CE <= 1;  CF <= 0; CG <= 0;
                        //AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                6 :
                    begin
                        CA <= 1; CB <= 1; CC <= 0;  CD <= 0; CE <= 0;  CF <= 0; CG <= 0;
                        //AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                7 :
                    begin
                        CA <= 0; CB <= 0; CC <= 0;  CD <= 1; CE <= 1;  CF <= 1; CG <= 1;
                        //AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;                
                    end     
                8 :
                    begin
                        CA <= 0; CB <= 0; CC <= 0;  CD <= 0; CE <= 0;  CF <= 0; CG <= 0;
                        //AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end     
                9 :
                    begin
                        CA <= 0; CB <= 0; CC <= 0;  CD <= 1; CE <= 1;  CF <= 0; CG <= 0;
                        //AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;               
                    end     
                 default : 
                    begin
                        AN0 <= 1; AN1 <= 1; AN2 <= 1;
                        AN3 <= 1; AN4 <= 1; AN5 <= 1;
                        AN6 <= 1; AN7 <= 1;
            
                    end
                endcase
                
                case(seven_select)                  
                0 : 
                    begin
                        AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                1 :        
                    begin
                        AN0 <= 1; AN1 <= 0; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                2 :
                    begin
                        AN0 <= 1; AN1 <= 1; AN2 <= 0; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                3 :
                    begin
                        AN0 <= 1; AN1 <= 1; AN2 <= 1; AN3 <= 0; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                4 :
                    begin
                        AN0 <= 1; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 0; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                    end
                5 :
                    begin
                        AN0 <= 1; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 0; AN6 <= 1; AN7 <= 1;
                    end
                6 :
                    begin
                        AN0 <= 1; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 0; AN7 <= 1;
                    end
                7 :
                    begin
                        AN0 <= 1; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 0;                
                    end     
                 default : 
                    begin
                        AN0 <= 1; AN1 <= 1; AN2 <= 1;
                        AN3 <= 1; AN4 <= 1; AN5 <= 1;
                        AN6 <= 1; AN7 <= 1;
                    end
                endcase
                            
            end   
        end
endmodule
