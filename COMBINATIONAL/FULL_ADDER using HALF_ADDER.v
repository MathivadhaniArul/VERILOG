module HA(input a,b,output sum,carry);
  assign sum=a^b;
  assign carry=a&b;
endmodule

module FA(input a,b,cin,output s,cout);
  wire c,c1,sum;
  HA ha1(a,b,s,c);
  HA ha2(s,cin,sum,c1);
  assign cout=c|c1;
 
endmodule
