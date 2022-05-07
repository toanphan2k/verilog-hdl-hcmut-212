module fifo(data_out,fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow,clk, rst_n, wr, rd, data_in);  
    input wr, rd, clk, rst_n;  
    input[7:0] data_in;   
    output[7:0] data_out;  
    output fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow;  
    wire[4:0] wptr,rptr;  
    wire fifo_we,fifo_rd;   
    
    write_pointer top1(wptr,fifo_we,wr,fifo_full,clk,rst_n);  
    read_pointer top2(rptr,fifo_rd,rd,fifo_empty,clk,rst_n);  
    memory_array top3(data_out, data_in, clk,fifo_we, wptr,rptr);  
    status_signal top4(fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow, wr, rd, fifo_we, fifo_rd, wptr,rptr,clk,rst_n);  
endmodule 
