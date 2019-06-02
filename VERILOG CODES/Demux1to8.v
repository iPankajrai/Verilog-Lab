//1:8 Demux using 1:4 demuxes

module demux18(d,e1,e2,e3,r1,r2,r3,r4,r5,r6,r7,r8);
        input d,e1,e2,e3;
        output r1,r2,r3,r4,r5,r6,r7,r8;
        wire w1,w2;
        demux12 a(d,e1,w1,w2);
        demux14 a1(w1,e2,e3,r1,r2,r3,r4);
        demux14 a2(w2,e2,e3,r5,r6,r7,r8);
endmodule

//Data flow modelling
module demux14(d,s1,s2,y1,y2,y3,y4);
        input d,s1,s2;
        output y1,y2,y3,y4;
        assign y1 = (~s1)&(~s2)&d;
        assign y2 = (~s1)&(s2)&d;
        assign y3 = (s1)&(~s2)&d;
        assign y4 = (s1)&(s2)&d;
endmodule

//use 1:2 demux module , when 1:4 demux has to make with 1:2 demux
module demux12(d,s1,y1,y2);
        input d,s1;
        output y1,y2;
        assign y1 = (~s1)&d;
        assign y2 = (s1)&d;
endmodule
