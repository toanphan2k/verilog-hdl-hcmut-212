module ripplecarry_4bit_adder(a, b, c_in, sum, carry);
    input [3:0]a;
    input [3:0]b;
    input c_in;
    output [3:0]sum;
    output carry;

    wire z0, z1, z2;

    full_adder FA_1(a[0], b[0], c_in, sum[0], z0);
    full_adder FA_2(a[1], b[1], z0, sum[1], z1);
    full_adder FA_3(a[2], b[2], z1, sum[2], z2);
    full_adder FA_4(a[3], b[3], z2, sum[3], carry);

endmodule

