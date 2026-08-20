module top_module( 
    input a, b, cin,
    output cout, sum );
    assign cout=(b&(a^cin))|(a&cin);
    assign sum=(!a&!b&cin)|(!a&b&!cin)|(a&!b&!cin)|(a&b&cin);
endmodule
