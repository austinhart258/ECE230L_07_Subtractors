// Implement module called full_adder
module full_adder(
    input A,
    input B,
    input Cin,
    
    output Y,
    output Cout
);

    //Logic equation from K-Map.
    assign Y = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);

endmodule