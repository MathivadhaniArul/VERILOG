module FS(input a,b,bin,output s,bout);
  assign s=a^b^bin;
  assign bout=(~a&b)|~(a^b)&bin;
endmodule
