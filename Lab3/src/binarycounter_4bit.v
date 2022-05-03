module pos_edge_dectect(
    input signal,
    input clock,
    output reg pe
    );
    
    reg sig_delay;
    
    always @(posedge clock) begin
        sig_delay <= signal;
        pe = signal & ~sig_delay;
    end
endmodule

module counter(
    input clock_in,
    input button,
    output reg [3:0] out
    );
    
    pos_edge_dectect get_rst(button, clock_in, clock_out);
    initial begin out = 4'b0000; end
    always @(posedge clock_in) begin
        if (clock_out == 1) out = out + 1;        
    end
endmodule