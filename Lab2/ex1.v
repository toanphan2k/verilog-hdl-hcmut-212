module ex1(c_in, c_out);
    input [3:0] c_in;
    output [3:0] c_out;

    assign c_out[0] = ^c_in[3:0];
    assign c_out[1] = (^c_in[3:2])^(^c_in[1:0]);
    assign c_out[2] = ~|c_in[3:0];
    assign c_out[3] = &c_in[3:0]; 

endmodule