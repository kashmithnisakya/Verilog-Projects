//create a module for 4 bit full adder
module fourbit_full_adder(input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout);

//create a wire to connect the output of xor gate to sum
    wire C1,C2,C3;

 // Instantiate 4 full adder sub-modules
    full_adder FA0 (A[0], B[0], Cin, S[0], C1);
    full_adder FA1 (A[1], B[1], C1, S[1], C2);
    full_adder FA2 (A[2], B[2], C2, S[2], C3);
    full_adder FA3 (A[3], B[3], C3, S[3], Cout);
endmodule




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