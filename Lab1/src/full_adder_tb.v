module full_adder_tb();
    reg a;
    reg b;
    
    reg c_in;
    wire sum;
    wire c_out;
    
    full_adder UUT (a,b,c_in,sum,c_out);
    
    initial
      begin
        a = 1'b0; b = 1'b0; c_in = 1'b0;
        #10
        a = 1'b0; b = 1'b0; c_in = 1'b1;
        #10   
        a = 1'b0; b = 1'b1; c_in = 1'b0;
        #10
        a = 1'b0; b = 1'b1; c_in = 1'b1;
        #10
        a = 1'b1; b = 1'b0; c_in = 1'b0;
        #10
        a = 1'b1; b = 1'b0; c_in = 1'b1;
        #10
        a = 1'b1; b = 1'b1; c_in = 1'b0;
        #10
        a = 1'b1; b = 1'b1; c_in = 1'b1;
        #10
      $stop;
      end

endmodule 