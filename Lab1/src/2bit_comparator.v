module comparator_2bit(A_gt_B, A_lt_B, A_eq_B, a, b);
    input [1:0] a;
    input [1:0] b;

    output A_gt_B, A_lt_B, A_eq_B;
    wire N1, N2, N3; 
    wire N4, N5;

    and AND_1(N1,~a[1], b[1]);
    and AND_2(N2,~a[1], ~a[0], b[0]);
    and AND_3(N3, ~a[0], b[1], b[0]);

    xnor XNOR_1(N4, a[1], b[1]);
    xnor XNOR_2(N5, a[0], b[0]);

    or  OR_1(A_lt_B, N1, N2, N3);
    and AND_4(A_eq_B, N4, N5);

    nor NOR_1(A_gt_B, A_lt_B, A_eq_B);

endmodule