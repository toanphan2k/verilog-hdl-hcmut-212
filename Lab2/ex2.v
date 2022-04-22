module ex2(en, bin_in, led_out);
    input en;
    input [3:0]bin_in;
    output reg[6:0]led_out;
    

    always @(bin_in or en)
    if(en) begin
        case (bin_in)
            4'b0000: led_out = 7'b1111110;//0
            4'b0001: led_out = 7'b0110000;//1
            4'b0010: led_out = 7'b1101101;//2
            4'b0011: led_out = 7'b1111001;//3
            4'b0100: led_out = 7'b0110011;//4
            4'b0101: led_out = 7'b1011011;//5
            4'b0110: led_out = 7'b1011111;//6
            4'b0111: led_out = 7'b1110000;//7
            4'b1000: led_out = 7'b1111111;//8
            4'b1001: led_out = 7'b1111011;//9
            default: led_out = 7'b0000000;
        endcase
    end

endmodule