module memory_array(data_out, data_in, clk,fifo_we, wptr,rptr);  
    input[7:0] data_in;  
    input clk,fifo_we;  
    input[4:0] wptr,rptr;  
    output[7:0] data_out;  
    reg[7:0] data_out2[15:0];  
    wire[7:0] data_out;  
    always @(posedge clk)  
    begin  
        if(fifo_we)   
            data_out2[wptr[3:0]] <=data_in ;  
    end  
       assign data_out = data_out2[rptr[3:0]];  
endmodule
