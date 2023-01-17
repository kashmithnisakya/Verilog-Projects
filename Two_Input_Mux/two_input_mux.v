//two input mux module
module two_input_mux(input A,B,select,output OUT);
    reg OUT;
    
    always @ (A or B or select)
        if (select == 1) OUT = A;
        else OUT = B;
endmodule