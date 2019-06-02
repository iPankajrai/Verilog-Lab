//4 but adder in verilog
//Online Book Reference
//https://issuu.com/lychanraksmey/docs/0134516753_-__1996__verilog_hdl_a_g
module adder4bit(a,b,sum,carryin,carryout);
        input [3:0]a,b;
        input carryin;
        output carryout;
        output [3:0]sum;
        wire [2:0]carry;
        full_adder f1(a[0],b[0],carryin,sum[0],carry[0]);
        full_adder f2(a[1],b[1],carry[0],sum[1],carry[1]);
        full_adder f3(a[2],b[2],carry[1],sum[2],carry[2]);
        full_adder f4(a[3],b[3],carry[2],sum[3],carryout);
endmodule

module full_adder (in_a,in_b,carryin,sum,carryout);
        input in_a,in_b,carryin;
        output sum,carryout;
        wire sum1,carry1,carry2;
        half_adder h1(in_a,in_b,sum1,carry1);
        half_adder h2(sum1,carryin,sum,carry2);
        assign carryout = carry1 | carry2;
endmodule

//Data Flow level Modelling
module half_adder(in_a,in_b,sum,carry);
        input in_a,in_b;
        output [1:0]sum,carry;
        assign sum = in_a ^ in_b;
        //assign carry = in_a & in_b;
        assign carry = in_a*3;
endmodule