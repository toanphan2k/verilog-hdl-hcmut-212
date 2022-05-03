module ex2(en, bin_in, led_out);
    input en;
    input [3:0]bin_in;
    output reg[6:0]led_out;
    

    always @(bin_in or en)
    if(en) begin
        case (bin_in)
            4'b0000: led_out = 7'b0000001;//0
            4'b0001: led_out = 7'b1001111;//1 
            4'b0010: led_out = 7'b0010010;//2 
            4'b0011: led_out = 7'b0000110;//3 
            4'b0100: led_out = 7'b1001100;//4 
            4'b0101: led_out = 7'b0100100;//5 
            4'b0110: led_out = 7'b0100000;//6 
            4'b0111: led_out = 7'b0001111;//7 
            4'b1000: led_out = 7'b0000000;//8 
            4'b1001: led_out = 7'b0000100;//9 
            default: led_out = 7'b1111111;
        endcase
    end

endmodule