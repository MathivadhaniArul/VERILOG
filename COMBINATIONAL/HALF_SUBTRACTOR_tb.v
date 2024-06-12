module HS_TB;
  reg a,b;
  wire s,c;
  HS hs(.a(a), .b(b), .c(c),.s(s));
  initial begin
    $dumpfile("HS.vcd");
  $dumpvars(1);
    $monitor("At time %0t , a=%b,b=%b,s=%b,c=%b",$time,a,b,s,c);
    a=0;b=0;
    #1
    a=0;b=1;
    #1
    a=1;b=0;
    #1
    a=1;b=1;
  end
endmodule 
