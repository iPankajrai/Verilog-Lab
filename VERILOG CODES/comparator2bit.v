//2 Bit Comparator
//Data flow modelling
module bit_2_comparator_df(input [1:0]a,[1:0]b,output g,e,l);
  assign g = ((~b[1])&a[1]) |((~b[1])&(~b[0])&a[0])|((~b[0])&a[1]&a[0]);
  assign e = (~(a[0]^b[0]))&(~(a[1]^b[1]));
  assign l = (b[1]&(~a[1]))|(b[0]&(~a[0])&(~a[0]))|(b[1]&b[0]&(~a[0]));
endmodule
