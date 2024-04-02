module sub_13bit(a,b,c);
input[12:0]a,b;
output[12:0]c;
wire b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13;
FS f1(a[0],b[0],1'b0,c[0],b1);
FS f2(a[1],b[1],b1,c[1],b2);
FS f3(a[2],b[2],b2,c[2],b3);
FS f4(a[3],b[3],b3,c[3],b4);
FS f5(a[4],b[4],b4,c[4],b5);
FS f6(a[5],b[5],b5,c[5],b6);
FS f7(a[6],b[6],b6,c[6],b7);
FS f8(a[7],b[7],b7,c[7],b8);
FS f9(a[8],b[8],b8,c[8],b9);
FS f10(a[9],b[9],b9,c[9],b10);
FS f11(a[10],b[10],b10,c[10],b11);
FS f12(a[11],b[11],b11,c[11],b12);
FS f13(a[12],b[12],b12,c[12],b13);


endmodule
module FS(a,b,c,diff,borrow);
input a,b,c;
output diff,borrow;
wire w1,w2,w3,w4,a1;
xor(diff,a,b,c);
not(a1,a);
and(w1,a1,b);
xnor(w2,a,b);
and(w3,w2,c);
or(borrow,w1,w3);
endmodule