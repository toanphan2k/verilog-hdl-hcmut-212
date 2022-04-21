module half_adder(a,b,sum,c_out);
    input a,b;
    output sum, c_out;

    xor XOR_0(sum, a, b);
    and AND_0(c_out, a, b);
endmodule