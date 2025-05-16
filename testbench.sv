module CarrySkipAdder_tb;
    reg [3:0] a, b;   
    reg cin;        
    wire [3:0] sum;   
    wire cout;       
    CarrySkipAdder uut ( .a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

    initial begin
          $dumpfile("dumpfile.vcd");
    $dumpvars(1);
        $monitor("Time=%0d a=%b b=%b cin=%b sum=%b cout=%b", $time, a, b, cin, sum, cout);
        // Test case 1
        a = 4'b0001; b = 4'b0010; cin = 1'b0; #10;        
        // Test case 2
        a = 4'b1111; b = 4'b1111; cin = 1'b1; #10;       
        // Test case 3
        a = 4'b0101; b = 4'b0011; cin = 1'b0; #10;
        // Test case 4
        a = 4'b1010; b = 4'b0101; cin = 1'b1; #10;        
        // Test case 5
        a = 4'b1001; b = 4'b0110; cin = 1'b0; #10;
        $finish;
    end
endmodule
