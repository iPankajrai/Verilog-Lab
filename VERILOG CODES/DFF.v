//D Flip Flop

module dffbhe(input clk,reset,d,output reg q,qb );
 always@(negedge clk or posedge reset)
    begin
        if(reset == 1)
            begin
            //when reeset is HIGH or 1, then output will be 0, independent of input or clock
                q<=0;
                qb<=1;
            end
        else
            begin
                q<=d;
                qb<=~d;
            end
    end
endmodule
