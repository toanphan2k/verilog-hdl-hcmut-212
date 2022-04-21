module full_adder(a, b, cin, sum, c_out);
    input a, b, cin;
    output sum, c_out;
    wire s, c1, c2;
    half_adder HA_1 (a, b, s, c1);
    half_adder HA_2 (s, cin, sum, c2);

    or OR_1 (c_out, c1, c2);
endmodule