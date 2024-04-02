module main_tb;
reg[3:0]q1,q2,q3,q4,q5;
wire[12:0]total,discount,final;
wire ed;
main m(q1,q2,q3,q4,q5,total,ed,discount,final);
initial begin
$monitor("q1=%d,q2=%d,q3=%d,q4=%d,q5=%d,Total amount=%d,Eligible for discount=%d,Discount availed=%d,final amount=%d",q1,q2,q3,q4,q5,total,ed,discount,final);
q1=4'd10;q2=4'd2;q3=4'd5;q4=4'd10;q5=4'd4;
#10
q1=4'd1;q2=4'd2;q3=4'd1;q4=4'd1;q5=4'd2;
#10
q1=4'd15;q2=4'd15;q3=4'd15;q4=4'd15;q5=4'd15;
#10
q1=4'd0;q2=4'd0;q3=4'd0;q4=4'd0;q5=4'd0;
#10
q1=4'd13;q2=4'd5;q3=4'd6;q4=4'd7;q5=4'd8;
#10
q1=4'd0;q2=4'd0;q3=4'd10;q4=4'd0;q5=4'd0;
#10
q1=4'd15;q2=4'd10;q3=4'd0;q4=4'd1;q5=4'd2;
#10
q1=4'd1;q2=4'd15;q3=4'd1;q4=4'd1;q5=4'd1;



end
endmodule