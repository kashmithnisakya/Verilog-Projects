//create  module d_ff
module d_ff (input clk, d, 
            output q, q_bar);

wire d, clk;
reg q, q_bar;

always @ (posedge clk)
begin
    q <= d;
    q_bar <= ~d;
end
endmodule