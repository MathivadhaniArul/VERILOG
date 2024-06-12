module FS_TB;
  reg a,b,bin;
  wire s,bout;
  FS fs(.a(a), .b(b), .bin(bin),.s(s),.bout(bout));
  initial begin
    $dumpfile("FS.vcd");
  $dumpvars(1);
  $monitor("At time %0t a=%b,b=%b,bin=%b,s=%b,bout=%b",$time,a,b,bin,s,bout);
    a=0;b=0;bin=0;#1;
    a=0;b=0;bin=1;#1;
    a=0;b=1;bin=0;#1;
    a=0;b=1;bin=1;#1;
    a=1;b=0;bin=0;#1;
    a=1;b=0;bin=1;#1;
    a=1;b=1;bin=0;#1;
    a=1;b=1;bin=1;
  end
endmodule 
