`timescale 1ns/1ps

module ripplecarry_4bit_adder_tb();
    reg [3:0]A;
    reg [3:0]B;
    reg cin;
    wire [3:0]S;
    wire cout;

    ripplecarry_4bit_adder UUT(.a(A), .b(B), .c_in(cin), .sum(S), .carry(cout));

    initial
        begin
            A=0000;B=0000;cin=0;
            #10 A=0001;B=0001;cin=0;
            #10 A=0010;B=0010;cin=0;
            #10 A=0100;B=0100;cin=0;
            #10 A=0101;B=0101;cin=0;
            #10 A=0110;B=0110;cin=0;
            #10 A=0111;B=0111;cin=0;
            #10 A=1000;B=1000;cin=0;
            #10 A=1001;B=1001;cin=0;
            #10 A=1010;B=1010;cin=0;
            #10 A=1011;B=1011;cin=0;
            #10 A=1100;B=1100;cin=0;
            #10 A=1101;B=1101;cin=0;
            #10 A=1110;B=1110;cin=0;
            #10 A=1111;B=1111;cin=0;
            #10 A=0000;B=0000;cin=1;
            #10 A=0001;B=0001;cin=1;
            #10 A=0010;B=0010;cin=1;
            #10 A=0100;B=0100;cin=1;
            #10 A=0101;B=0101;cin=1;
            #10 A=0110;B=0110;cin=1;
            #10 A=0111;B=0111;cin=1;
            #10 A=1000;B=1000;cin=1;
            #10 A=1001;B=1001;cin=1;
            #10 A=1010;B=1010;cin=1;
            #10 A=1011;B=1011;cin=1;
            #10 A=1100;B=1100;cin=1;
            #10 A=1101;B=1101;cin=1;
            #10 A=1110;B=1110;cin=1;
            #10 A=1111;B=1111;cin=1;
            $stop;
        end
endmodule