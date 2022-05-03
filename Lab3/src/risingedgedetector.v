module risingedgedetector (
    input signal,
    input clk,
    output reg out
);
    reg signal_delay;
    always @(posedge clk) begin
        signal_delay <= signal; 
        out = signal & ~signal_delay;
    end
endmodule