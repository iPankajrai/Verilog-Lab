/*
        CODE CONVERTER VERILOG CODE

*/

module BCD_to_excess3( din , dout ); 
    output [3:0] dout ; 
    input [3:0] din ; 

    assign dout = (din==0) ? 3 : 
    (din==1) ? 4 : 
    (din==2) ? 5 : 
    (din==3) ? 6 : 
    (din==4) ? 7 : 	
    (din==5) ? 8 : 
    (din==6) ? 9 : 
    (din==7) ? 10 : 
    (din==8) ? 11 : 
    (din==9) ? 12 : 
    4'bZZZZ ; 
endmodule

module bcd_to_gray(
    input [3:0] bin, //binary input 
    output [3:0] G //gray code output 
    ); 

        //xor gates. 	
        assign G[3] = bin[3]; 
        assign G[2] = bin[3] ^ bin[2]; 
        assign G[1] = bin[2] ^ bin[1]; 
        assign G[0] = bin[1] ^ bin[0]; 
endmodule


module excess3_to_Bcd(din , dout ); 
    output [3:0] dout ; 
    input [3:0] din ; 

    assign dout = (din==3) ? 0 : 
    (din==4) ? 1 : 
    (din==5) ? 2 : 
    (din==6) ? 3 : 
    (din==7) ? 4 : 	 
    (din==8) ? 5 : 
    (din==9) ? 6 : 
    (din==10) ? 7 : 
    (din==11) ? 8 : 
    (din==12) ? 9 : 
    4'bZZZZ ; 
endmodule


module gray_to_BCD( 
    input [3:0] G, //gray code output
    output [3:0] bin //binary input
    ); 
        assign bin[3] = G[3]; 	assign bin[2] = G[3] ^ G[2];
        assign bin[1] = G[3] ^ G[2] ^ G[1]; 
        assign bin[0] = G[3] ^ G[2] ^ G[1] ^ G[0]; 
endmodule
