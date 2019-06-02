//4 bit adder test bench Verilog Code

module adder_test;
        wire [3:0]sum;    //output  sum 
        wire carryout;     //carry output
        reg [3:0]a,b;         //register to store 
        reg carryin;
        adder4bit a1(a,b,sum,carryin,carryout);
        initial
            begin
                #10     //delay of 10 units, nS generally (in code)
                a=4'b1010;
                b=4'b1101;
                carryin=1'b1;
                #10      
                a=4'b1110;
                b=4'b1001;
                carryin=1'b0;
            end
        initial
            begin
                $monitor($time,"%b %b %b %b %b",a,b,carryin,sum,carryout);
                // $monitor statement displays the value of a variable or a signal when ever its value changes.
                // It gets executed in the postponed region.
                #100 //100 units of delay
                $stop;
            end
endmodule
