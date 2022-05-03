`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 01:19:35 PM
// Design Name: 
// Module Name: clock_divider_tb
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


module policesiren_tb(

    );
reg clock_in;
wire LED_R;
wire LED_B;

policesiren uut(.CLOCK_50(clock_in), .LED_B(LED_B), .LED_R(LED_R));

initial begin
    clock_in = 0;
    forever #10 clock_in = ~clock_in;
end
endmodule
