//Subracor in Behavioral level Modelling

module full_sub_us_hs (output d, output bout, input x, input y, input bin);
    half_sub_df s1(d1, b1, x, y);
    half_sub_df s2(d, b, d1, bin);
    or r1(bout, b1, b);
endmodule

//Behavioral level Modelling
module half_sub_beh (output reg diff, output reg borrow, input x, input y);
        always@ (*)
	     begin
	         if (x==0 && y==0)
	            begin
	                diff<=0;
	                borrow<=0;
	             end
	         else if (x==0 && y==1)
	            Begin
                    iff<=1;
	                borrow<=1;
                end
	         else if (x==1 && y==0)
	            begin
                    diff<=1;
                    borrow<=0;
	            end
	         else
                begin
                diff<=0;
                borrow<=0;
	         end
	   end
  endmodule
