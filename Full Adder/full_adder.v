//create full adder module
module full_adder(A,B,Cin,S,Cout);
    input A,B,Cin;
    output S,Cout;

//create a wire to connect the output of xor gate to sum
    wire S1,D1,D2;

//create a half adder module
    half_adder HF1(A,B,S1,D1);
    half_adder HF2(S1,Cin,S,D2);
    or (Cout,D1,D2);
endmodule


//create half adder module
module half_adder (A,B,S,C);
    input A,B;
    output S,C;

//create a wire to connect the output of xor gate to sum
    xor (S,A,B);
    and (C,A,B);
endmodule