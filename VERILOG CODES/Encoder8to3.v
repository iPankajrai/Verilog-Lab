//8:3 Encoder using Behavioral  level modelling in verilog

module enco_8_to_3_beh(output reg a,output reg b,output reg c,input [7:0]i);
    always@(*)
	 begin
        if(i[4]==1||i[5]==1||i[6]==1||i[7]==1)
            a<=1;
	    else
            a<=0;
	    if(i[2]==1||i[3]==1||i[6]==1||i[7]==1)
	        b<=1;
	    else
	        b<=0;
	    if(i[1]==1||i[3]==1||i[5]==1||i[7]==1)
	         c<=1;
	     else
	         c<=0;
    end
endmodule
