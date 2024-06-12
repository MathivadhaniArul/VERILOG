module FA_TB;
  reg a,b,cin;
  wire s,cout;
  FA fa(.a(a), .b(b), .cin(cin),.s(s),.cout(cout));
  initial begin
    $dumpfile("FA.vcd");
  $dumpvars(1);
   $monitor("At time %0t a=%b,b=%b,cin=%b,s=%b,cout=%b",$time,a,b,cin,s,cout);
    a=0;b=0;cin=0;#1;
    a=0;b=0;cin=1;#1;
    a=0;b=1;cin=0;#1;
    a=0;b=1;cin=1;#1;
    a=1;b=0;cin=0;#1;
    a=1;b=0;cin=1;#1;
    a=1;b=1;cin=0;#1;
    a=1;b=1;cin=1;
  end
endmodule 
