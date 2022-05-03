module policesiren (
    input CLOCK_50,
    output reg LED_B,
    output reg LED_R
);

    /* reg */
    reg [8:0] counter;
    reg state;
    initial 
    counter = 4'b0000;

    always @ (posedge CLOCK_50) begin
        LED_R <= ~LED_B;
        LED_B <= state;
        counter <= counter + 1;
        state <= counter[8];
         // <------ data to change
    end

endmodule