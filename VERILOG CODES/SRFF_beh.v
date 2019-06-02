//SR flip flop using behavioral modelling

module srffbhe( input clk,reset,s,r,output reg q,qb);
    always@(negedge clk or posedge reset)
        begin
            if(reset == 1)
                begin
                    q<=0;
                    qb<=0;
                end
            else
                begin
                    q<=s+(q&(~r));
                    qb<=~(s+(q&(~r)));
                end
        end
endmodule
    