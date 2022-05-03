`timescale 1ns / 1ps
module risingedgedetector_tb();

    reg signal;
    reg clk;
    wire out;
    
    risingedgedetector UUT(.signal(signal), .clk(clk), .out(out));
    
    always #5 clk = ~clk;
    
    initial begin
        clk <= 0;
        signal <=0;
        #10 signal <= 0;
        #15 signal <= 1;
        #20 signal <= 0;
        #25 signal <= 0;
        #30 signal <= 0;
        #35 signal <= 1;
        #40 signal <= 0;
        #45 signal <= 0;
        $stop; 
    end
endmodule
