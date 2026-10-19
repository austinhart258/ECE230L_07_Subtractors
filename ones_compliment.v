module ones_comp (
    input [3:0] A,
    input [3:0] B,
    
    output [3:0] Y
);

wire [3:0] w_carry;
wire [3:0] w_sum;

genvar i;

// Stage 1
generate
// unique case
full_adder fa0 (.A(A[0]), .B(B[0]), .Cin(1'b0), .Cout(w_carry[0]), .Y(w_sum[0]));
// general case
for (i = 1; i < 4; i= i + 1)
begin: stage1_block
full_adder fa (.A(A[i]), .B(B[i]), .Cin(w_carry[i-1]), .Cout(w_carry[i]), .Y(w_sum[i]));
end
endgenerate

// Stage 2
wire [3:0] w_carry2;
wire [3:0] w_sum2;
generate
// unique case
full_adder fb0 (.A(w_sum[0]), .B(1'b0), .Cin(w_carry[3]), .Cout(w_carry2[0]), .Y(w_sum2[0]));
// general case
for (i = 1; i < 4; i= i + 1)
begin: stage2_block
full_adder fb (.A(w_sum[i]), .B(1'b0), .Cin(w_carry2[i-1]), .Cout(w_carry2[i]), .Y(w_sum2[i]));
end
endgenerate

assign Y = w_sum2;

endmodule