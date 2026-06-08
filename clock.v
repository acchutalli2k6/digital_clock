`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2026 19:44:10
// Design Name: 
// Module Name: clock
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


module digital_clock(
input clk, input rst,
    output reg [6:0] min, sec,
    output reg [5:0] hr
    );
    reg [3:0] sec_ones, min_ones, hr_ones;
    reg [2:0] sec_mins, min_tens;
    reg [1:0] hr_tens;
always @(posedge clk or negedge rst) begin
if(!rst) begin hr<=0; min<=0; sec<=0; end
else begin
    if(sec_ones==4'd9 && sec_tens==4'd5) 
        begin 
            {sec_tens,sec_ones}<=0; 
            if(min_ones==4'd9 && min_tens==4'd5) 
           begin 
               {min_tens,min_ones}<=0; 
               if(hr_ones==4'd3 && hr_tens==2'd2) {hr_tens, hr_ones}<=0;
               else begin hr_ones<=hr_ones+1; 
                   if(hr_ones==9) hr_tens<=hr_tens+1'b1; 
               end
            end
         else begin min_ones<=min_ones+1; 
             if(min_ones==4'd9) min_tens<=min_tens+1'b1; end
         end
         else begin sec_ones<=sec_ones+1;
             if(sec_ones==4'd9) sec_mins<=sec_mins+1'b1; end
    end
end
endmodule
