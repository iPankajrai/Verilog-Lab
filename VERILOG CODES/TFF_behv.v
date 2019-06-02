//T flip flop

module tffbhe(input clk,reset,t,output reg q,qb );
 always@(negedge clk or posedge reset)
    begin
        if(reset == 1)
            begin
            // when reset is HIGH, output will be zero, independent of inputs or clock
                q<=0;
                qb<=0;
            end
        else
            begin
                q<=((~q)&t)+(q&(~t));
                qb<=~(((~q)&t)+(q&(~t)));
            end
    end
endmodule
