//create half adder module 
module half_adder (A,B,S,C);
    input A,B;
    output S,C;

//create a wire to connect the output of xor gate to sum
    xor (S,A,B);
    and (C,A,B);

endmodule