

module adder_1213bit(sum,a,b);
input[11:0]a,b;
output[12:0]sum;
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11;
fa f0(a[0],b[0],1'b0,sum[0],c1);
fa f1(a[1],b[1],c1,sum[1],c2);
fa f2(a[2],b[2],c2,sum[2],c3);
fa f3(a[3],b[3],c3,sum[3],c4);
fa f4(a[4],b[4],c4,sum[4],c5);
fa f5(a[5],b[5],c5,sum[5],c6);
fa f6(a[6],b[6],c6,sum[6],c7);
fa f7(a[7],b[7],c7,sum[7],c8);
fa f8(a[8],b[8],c8,sum[8],c9);
fa f9(a[9],b[9],c9,sum[9],c10);
fa f10(a[10],b[10],c10,sum[10],c11);
fa f11(a[11],b[11],c11,sum[11],sum[12]);
endmodule