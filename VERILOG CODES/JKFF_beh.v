//JK flip flop using behavioral level modelling

module jkbhe(
    input clk,reset,j,k,
    output reg q,qb );
    always@(negedge clk or posedge reset)
    begin
        if(reset == 1)
            begin
            //when reset is HIGH, then output q will be zero, independent of inputs or clock
                q<=0;
                qb<=1;
            end
        else
        begin
            q<=((~q)&j)+(q&(~k));
            qb<=~(((~q)&j)+(q&(~k)));
        end
    end
 endmodule
