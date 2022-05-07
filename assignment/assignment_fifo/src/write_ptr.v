module write_pointer(wptr,fifo_we,wr,fifo_full,clk,rst_n);  
    input wr,fifo_full,clk,rst_n;  
    output[4:0] wptr;  
    output fifo_we;  
    reg[4:0] wptr;  
    
    assign fifo_we = (~fifo_full)&wr;  
    always @(posedge clk or negedge rst_n)  
    begin  
        if(~rst_n) wptr <= 5'b000000;  
        else if(fifo_we)  
            wptr <= wptr + 5'b000001;  
        else  
            wptr <= wptr;  
    end  
endmodule  