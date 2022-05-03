module rbg_led (sw, btn, led_r, led_b, led_g, led_w);
    input sw;
    input [3:0] btn;
    output reg led_r;
    output reg led_b;
    output reg led_g;
    output reg led_w;
    
    always @(btn or sw or led_r or led_b or led_g)
    case(btn)   
        4'b0001: begin
            led_r = 1'b0;
            led_b = 1'b0;
            led_g = 1'b0;
            led_w = 1'b0;
        end

        //CASE LED CYAN = BLUE + GREEN
        4'b0001: begin
            if(sw == 1'b1) begin
                led_r = 1'b0;
                led_b = 1'b1;
                led_g = 1'b1;
                led_w = 1'b0;
            end
            else if(sw == 1'b0) begin
                led_r = 1'b0;
                led_b = 1'b1;
                led_g = 1'b0;
                led_w = 1'b0;
            end
        end

        //CASE LED YELLOW = RED + GREEN
        4'b0010: begin
            if(sw == 1'b1) begin
                led_r = 1'b1;
                led_b = 1'b0;
                led_g = 1'b1;
                led_w = 1'b0;
            end
            else if(sw == 1'b0) begin
                led_r = 1'b0;
                led_b = 1'b0;
                led_g = 1'b1;
                led_w = 1'b0;
            end
        end 

        //CASE PURPLE = RED + BLUE
        4'b0100: begin
            if(sw == 1'b1) begin
                led_r = 1'b1;
                led_b = 1'b1;
                led_g = 1'b0;
                led_w = 1'b0;
            end
            else if(sw == 1'b0) begin
                led_r = 1'b1;
                led_b = 1'b0;
                led_g = 1'b0;
                led_w = 1'b0;
            end
        end 

        //CASE WHITE
        4'b1000: begin
            led_r = 1'b0;
            led_b = 1'b0;
            led_g = 1'b0;
            led_w = 1'b1;
        end 

        // 
        default: begin
            if(sw == 1'b1) begin
                led_r = 1'b0;
                led_b = 1'b0;
                led_g = 1'b0;
                led_w = 1'b0;
            end
            else if(sw == 1'b0) begin
                led_r = 1'b1;
                led_b = 1'b1;
                led_g = 1'b1;
                led_w = 1'b1;
            end
        end
    endcase
endmodule