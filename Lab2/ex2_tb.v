module tb_segment7;
    reg enable;
    reg [3:0]in;
    
    wire [6:0]out;
    integer i;

    // Instantiate the Unit Under Test (UUT)
    ex2 uut (.en(enable), .bin_in(in), .led_out(out));

//Apply inputs
    initial begin
        enable = 1'b0;
        for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
            in = i; 
            #10; //wait for 10 ns
        end   
        
        enable = 1'b1;
        for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
            in = i; 
            #10; //wait for 10 ns
        end    
        $stop;
      
    end
    
endmodule