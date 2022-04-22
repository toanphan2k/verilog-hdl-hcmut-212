`timescale 1 ns/10 ps 
module ex1_tb();
    reg [3:0] in;
    wire [3:0] out;

    ex1 UUT(.c_in(in), .c_out(out));

    initial begin
        for(in = 0; in < 16; in= in +1) #10
    end

    $stop
endmodule