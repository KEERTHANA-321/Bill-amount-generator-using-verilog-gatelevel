module main(q1,q2,q3,q4,q5,total,ed,discount,final);
//input the no of items purchased for each product(max. number that can be purchased is 15)
input[3:0]q1,q2,q3,q4,q5;
output[12:0]total,discount,final;
//ed tells whether customer is eligible for discount or not 
output ed;
//prices of each product
wire[7:0]p1,p2,p3,p4,p5;
//total amount of each product
wire[11:0]t1,t2,t3,t4,t5;
wire[12:0]limit,w1,w2,w3,w4;

//hardcoding values of each product
//price of product 1 is 50 rupees(110010 in binary)
not(p1[0],1'b1);
not(p1[1],1'b0);
not(p1[2],1'b1);
not(p1[3],1'b1);
not(p1[4],1'b0);
not(p1[5],1'b0);
not(p1[6],1'b1);
not(p1[7],1'b1);
//price of product 2 is 25 rupees(11001 in binary)
not(p2[0],1'b0);
not(p2[1],1'b1);
not(p2[2],1'b1);
not(p2[3],1'b0);
not(p2[4],1'b0);
not(p2[5],1'b1);
not(p2[6],1'b1);
not(p2[7],1'b1);
//price of product 3 is 100 rupees(1100100 in binary)
not(p3[0],1'b1);
not(p3[1],1'b1);
not(p3[2],1'b0);
not(p3[3],1'b1);
not(p3[4],1'b1);
not(p3[5],1'b0);
not(p3[6],1'b0);
not(p3[7],1'b1);
//price of product 4 is 150 rupees(10010110 in binary)
not(p4[0],1'b1);
not(p4[1],1'b0);
not(p4[2],1'b0);
not(p4[3],1'b1);
not(p4[4],1'b0);
not(p4[5],1'b1);
not(p4[6],1'b1);
not(p4[7],1'b0);
//price of product 5 is 120 rupees(1111000 in binary)
not(p5[0],1'b1);
not(p5[1],1'b1);
not(p5[2],1'b1);
not(p5[3],1'b0);
not(p5[4],1'b0);
not(p5[5],1'b0);
not(p5[6],1'b0);
not(p5[7],1'b1);
//fixing the min amount required to avail discount(1000 rupees)
not(limit[0],1'b1);
not(limit[1],1'b1);
not(limit[2],1'b1);
not(limit[3],1'b0);
not(limit[4],1'b1);
not(limit[5],1'b0);
not(limit[6],1'b0);
not(limit[7],1'b0);
not(limit[8],1'b0);
not(limit[9],1'b0);
not(limit[10],1'b1);
not(limit[11],1'b1);
//calculating total amount for each product
multiplier_8x4bit m1(p1,q1,t1);
multiplier_8x4bit m2(p2,q2,t2);
multiplier_8x4bit m3(p3,q3,t3);
multiplier_8x4bit m4(p4,q4,t4);
multiplier_8x4bit m5(p5,q5,t5);
//calculating total price
adder_1213bit a1(w1,t1,t2);
adder_13bit a2(w2,w1,t3);
adder_13bit a3(w3,w2,t4);
adder_13bit a4(total,w3,t5);
//comparing it with fixed limit for discount
comparator_13bit c1(total,limit,ed);
//finding the discount amount (25%) by dividing by 4
rtshift r1(total,discount,ed);
//finding the final price by subtracting the discount amount from total
sub_13bit s1(total,discount,final);

endmodule