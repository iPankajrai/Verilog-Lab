//8:1 Mux using 4:1 and 2:1 muxes

module muxdf821421(y1,a,b,c,d,e,f,g,h,s0,s1,s2);
        input a,b,c,d,e,f,g,h,s0,s1,s2;
        output y1;
        wire w1,w2;
        muxdf421 m1(w1,a,b,c,d,s0,s1);
        muxdf421 m2(w2,e,f,g,h,s0,s1);
        assign y1 = (w1&(~s2))|(w2&s2);
endmodule 

module muxdf421(x1,w,x,y,z,s3,s4);
        input w,x,y,z,s3,s4;
        output x1;
        wire w3, w4;
         //If not using 2:1 mux then use this assign statement     //assign x1 = w&(~s4)&(~s3)|x&(~s4)&s3|y&s4&(~s3)|z&s4&s3;
        Mux_2to1_Beh m3(w3, w, x, s4);
        Mux_2to1_Beh m4(w4, y, z, s4); 
        assign x1 = (w3&(~s3))| (w4&s3);                                             
endmodule

module Mux_2to1_Beh(output reg y,input d0,input d1,input s);
        always @(*)  // * is for all variable used in as a input 
            begin
                if(s==0)
                    y=d0;
                else
                    =d1;
            end
endmodule


