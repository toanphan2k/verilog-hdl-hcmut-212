`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 02:22:56 PM
// Design Name: 
// Module Name: pos_edge_dectect_tb
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


module pos_edge_dectect_tb(

    );
    reg clock;
    reg button;
    wire [3:0] out;

    
    counter ped0(.clock_in(clock), .button(button), .out(out));
    
    always #5 clock = ~clock;
    
    initial begin
    clock <= 0;
    button <= 0;
    #20;
    #10 button <= 1;
    #40 button <= 0;
    #10 button <= 1;
    #40 button <= 0;
    #20
    #20 button <= 1;
    #10 button <= 0;
    #20 button <= 1;
    #100 button <= 0;
    #20 button <= 1;
    #10 button <= 0;
    $stop;
    end
endmodule