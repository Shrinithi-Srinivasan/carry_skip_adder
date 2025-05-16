module CarrySkipAdder(
    input [3:0] a,    
    input [3:0] b,     
    input cin,         
    output [3:0] sum,  
    output cout        
);
    wire [3:0] p;      
    wire c1, c2, c3, c4;  
    assign p = a ^ b;
    assign sum[0] = p[0] ^ cin;
    assign c1 = (a[0] & b[0]) | (p[0] & cin);
    assign sum[1] = p[1] ^ c1;
    assign c2 = (a[1] & b[1]) | (p[1] & c1);
    assign sum[2] = p[2] ^ c2;
    assign c3 = (a[2] & b[2]) | (p[2] & c2);
    assign sum[3] = p[3] ^ c3;
    assign c4 = (a[3] & b[3]) | (p[3] & c3);
    assign cout = (p[3] & p[2] & p[1] & p[0]) ? cin : c4;
endmodule
