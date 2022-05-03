`timescale 1 ns/10 ps 
module ex1_tb();
    reg [3:0] in;
    wire [3:0] out;
    integer i;
    ex1 UUT(.c_in(in), .c_out(out));
    
    initial begin
        for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
            in = i; 
            #10; //wait for 10 ns
        end  
        $stop;
    end
endmodule