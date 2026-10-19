module twos_comp (
    input [7:0]A,
    output [7:0]Y
);

wire[7:0] w_carry;

genvar i;

generate

full_adder fa0 (.A(~A[0]), .B(1'b1), .Cin(1'b0), .Cout(w_carry[0]), .Y(Y[0]));

for(i = 1; i < 8; i= i + 1) 
begin: comp_converter
full_adder fa (.A(~A[i]), .B(1'b0), .Cin(w_carry[i-1]), .Cout(w_carry[i]), .Y(Y[i]));
end
endgenerate



endmodule