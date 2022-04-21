module comparator_4bit(A_gt_B, A_lt_B, A_eq_B, a, b);
    input [3:0] a;
    input [3:0] b;

    output A_gt_B, A_lt_B, A_eq_B;

    wire g1, g2, l1, l2, e1, e2;
    wire n1, n2;

    comparator_2bit comp2b_1(g1, l1, e1, a[1:0], b[1:0]);
    comparator_2bit comp2b_2(g2, l2, e2, a[3:2], b[3:2]);

    and AND_1(n1, e2, g1);
    or  OR_1(A_gt_B, g2, n1);

    and AND_2(n2, e2, l1);
    or  OR_2(A_lt_B, l2, n2);

    and AND_3(A_eq_B, e1, e2);
endmodule