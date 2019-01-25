`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/23 17:05:57
// Design Name: 
// Module Name: seven_display
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


module seven_display(
input clk_5M,
input [3:0] s1,
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
                    AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                end
            1 :        
                begin
                    CA <= 1; CB <= 0; CC <= 0;  CD <= 1; CE <= 1;  CF <= 1; CG <= 1;
                    AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                end
            2 :
                begin
                    CA <= 0; CB <= 0; CC <= 1;  CD <= 0; CE <= 0;  CF <= 1; CG <= 0;
                    AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                end
            3 :
                begin
                    CA <= 0; CB <= 0; CC <= 0;  CD <= 0; CE <= 1;  CF <= 1; CG <= 0;
                    AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                end
            4 :
                begin
                    CA <= 1; CB <= 0; CC <= 0;  CD <= 1; CE <= 1;  CF <= 0; CG <= 0;
                    AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                end
            5 :
                begin
                    CA <= 0; CB <= 1; CC <= 0;  CD <= 0; CE <= 1;  CF <= 0; CG <= 0;
                    AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                end
            6 :
                begin
                    CA <= 1; CB <= 1; CC <= 0;  CD <= 0; CE <= 0;  CF <= 0; CG <= 0;
                    AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                end
            7 :
                begin
                    CA <= 0; CB <= 0; CC <= 0;  CD <= 1; CE <= 1;  CF <= 1; CG <= 1;
                    AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;                
                end     
            8 :
                begin
                    CA <= 0; CB <= 0; CC <= 0;  CD <= 0; CE <= 0;  CF <= 0; CG <= 0;
                    AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;
                end     
            9 :
                begin
                    CA <= 0; CB <= 0; CC <= 0;  CD <= 1; CE <= 1;  CF <= 0; CG <= 0;
                    AN0 <= 0; AN1 <= 1; AN2 <= 1; AN3 <= 1; AN4 <= 1; AN5 <= 1; AN6 <= 1; AN7 <= 1;               
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
    
   /* 
  always@(posedge clk_5M, negedge resetn)
  begin
    if(!resetn)
    begin
        CA <= 0; CB <= 0; CC <= 0;
        CD <= 0; CE <= 0; CF <= 0;
        CG <= 0;
    end
            
    else
    begin
        if(swt[0])
        begin
            CA <= C0[0];  CB <= C0[1];
            CC <= C0[2];  CD <= C0[3];
            CE <= C0[4];  CF <= C0[5];
            CG <= C0[6];
            AN0 <= 0;
            AN1 <= 1;
            AN2 <= 1;
            AN3 <= 1;
            AN4 <= 1;
            AN5 <= 1;
            AN6 <= 1;
            AN7 <= 1;
        end
    
        else if(swt[1])
        begin
            CA <= C1[0];  CB <= C1[1];
            CC <= C1[2];  CD <= C1[3];
            CE <= C1[4];  CF <= C1[5];
            CG <= C1[6]; 
           AN0 <= 0;
            AN1 <= 1;
            AN2 <= 1;
            AN3 <= 1;
            AN4 <= 1;
            AN5 <= 1;
            AN6 <= 1;
            AN7 <= 1;
         
        end
       
        else if(swt[2])
        begin
            CA <= C2[0];  CB <= C2[1];
            CC <= C2[2];  CD <= C2[3];
            CE <= C2[4];  CF <= C2[5];
            CG <= C2[6]; 
            AN0 <= 0;
            AN1 <= 1;
            AN2 <= 1;
            AN3 <= 1;
            AN4 <= 1;
            AN5 <= 1;
            AN6 <= 1;
            AN7 <= 1;
        end
        
        else if(swt[3])
        begin
            CA <= C3[0];  CB <= C3[1];
            CC <= C3[2];  CD <= C3[3];
            CE <= C3[4];  CF <= C3[5];
            CG <= C3[6]; 
            AN0 <= 0;
            AN1 <= 1;
            AN2 <= 1;
            AN3 <= 1;
            AN4 <= 1;
            AN5 <= 1;
            AN6 <= 1;
            AN7 <= 1;
        end
        
        else if(swt[4])
        begin
            CA <= C4[0];  CB <= C4[1];
            CC <= C4[2];  CD <= C4[3];
            CE <= C4[4];  CF <= C4[5];
            CG <= C4[6]; 
            AN0 <= 0;
            AN1 <= 1;
            AN2 <= 1;
            AN3 <= 1;
            AN4 <= 1;
            AN5 <= 1;
            AN6 <= 1;
            AN7 <= 1;
        end
       
        else if(swt[5])
       begin
            CA <= C5[0];  CB <= C5[1];
            CC <= C5[2];  CD <= C5[3];
            CE <= C5[4];  CF <= C5[5];
            CG <= C5[6]; 
            AN0 <= 0;
            AN1 <= 1;
            AN2 <= 1;
            AN3 <= 1;
            AN4 <= 1;
            AN5 <= 1;
            AN6 <= 1;
            AN7 <= 1;
        end
        
        else if(swt[6])
        begin
            CA <= C6[0];  CB <= C6[1];
            CC <= C6[2];  CD <= C6[3];
            CE <= C6[4];  CF <= C6[5];
            CG <= C6[6]; 
            AN0 <= 0;
            AN1 <= 1;
            AN2 <= 1;
            AN3 <= 1;
            AN4 <= 1;
            AN5 <= 1;
            AN6 <= 1;
            AN7 <= 1;
        end
        
        else if(swt[7])
        begin
            CA <= C7[0];  CB <= C7[1];
            CC <= C7[2];  CD <= C7[3];
            CE <= C7[4];  CF <= C7[5];
            CG <= C7[6]; 
            AN0 <= 0;
            AN1 <= 1;
            AN2 <= 1;
            AN3 <= 1;
            AN4 <= 1;
            AN5 <= 1;
            AN6 <= 1;
            AN7 <= 1;
        end
        
        else if(swt[8])
        begin
            CA <= C8[0];  CB <= C8[1];
            CC <= C8[2];  CD <= C8[3];
            CE <= C8[4];  CF <= C8[5];
            CG <= C8[6];
            AN0 <= 0;
            AN1 <= 1;
            AN2 <= 1;
            AN3 <= 1;
            AN4 <= 1;
            AN5 <= 1;
            AN6 <= 1;
            AN7 <= 1;
        end
        
        else 
         begin
             CA <= C9[0];  CB <= C9[1];
             CC <= C9[2];  CD <= C9[3];
             CE <= C9[4];  CF <= C9[5];
             CG <= C9[6]; 
             AN0 <= 0;
             AN1 <= 1;
             AN2 <= 1;
             AN3 <= 1;
             AN4 <= 1;
             AN5 <= 1;
             AN6 <= 1;
             AN7 <= 1;
         end 
     end
    end
    */
endmodule
