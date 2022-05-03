`timescale 1ns/1ps

module rbg_led_tb();
    integer i;
    reg sw;
    reg [3:0] btn;
    
    wire led_r, led_b, led_g, led_w;
    rbg_led UUT (sw, btn, led_r, led_b, led_g, led_w);
    
    
    initial begin
        sw =1'b0;
        for(i = 0;i < 16;i = i+1)
            btn = i;
            #10
        
        sw =1'b1;
        for(i = 0;i < 16;i = i+1)
            btn = i;
            #10
        $stop;
    end 
endmodule