
module comparator_13bit(a,b,c);
input [12:0]a,b;
output c;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,b12,b11,b10,b9;
wire b8,b7,b6,b5,b4,b3,b2,b1,b0,c12,c11,c10,c9,c8,c7,c6,c5;
wire c4,c3,c2,c1,c0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11;
wire[77:0]e;
xnor(w1,a[0],b[0]);
xnor(w2,a[1],b[1]);
xnor(w3,a[2],b[2]);
xnor(w4,a[3],b[3]);
xnor(w5,a[4],b[4]);
xnor(w6,a[5],b[5]);
xnor(w7,a[6],b[6]);
xnor(w8,a[7],b[7]);
xnor(w9,a[8],b[8]);
xnor(w10,a[9],b[9]);
xnor(w11,a[10],b[10]);
xnor(w12,a[11],b[11]);
xnor(w13,a[12],b[12]);
not(b12,b[12]);
not(b11,b[11]);
not(b10,b[10]);
not(b9,b[9]);
not(b8,b[8]);
not(b7,b[7]);
not(b6,b[6]);
not(b5,b[5]);
not(b4,b[4]);
not(b3,b[3]);
not(b2,b[2]);
not(b1,b[1]);
not(b0,b[0]);
and(c12,b12,a[12]);
and(c11,b11,a[11]);
and(c10,b10,a[10]);
and(c9,b9,a[9]);
and(c8,b8,a[8]);
and(c7,b7,a[7]);
and(c6,b6,a[6]);
and(c5,b5,a[5]);
and(c4,b4,a[4]);
and(c3,b3,a[3]);
and(c2,b2,a[2]);
and(c1,b1,a[1]);
and(c0,b0,a[0]);

and(d0,c11,w13);

and(e[1],c10,w12);
and(d1,e[1],w13);

and(e[2],c9,w11);
and(e[3],e[2],w12);
and(d2,e[3],w13);

and(e[4],c8,w10);
and(e[5],w11,e[4]);
and(e[6],e[5],w12);
and(d3,e[6],w13);

and(e[7],c7,w9);
and(e[8],e[7],w10);
and(e[9],e[8],w11);
and(e[10],e[9],w12);
and(d4,e[10],w13);

and(e[11],c6,w8);
and(e[12],e[11],w9);
and(e[13],e[12],w10);
and(e[14],e[13],w11);
and(e[15],e[14],w12);
and(d5,e[15],w13);

and(e[16],c5,w7);
and(e[17],e[16],w8);
and(e[18],e[17],w9);
and(e[19],e[18],w10);
and(e[20],e[19],w11);
and(e[21],e[20],w12);
and(d6,e[21],w13);

and(e[22],c4,w6);
and(e[23],e[22],w7);
and(e[24],e[23],w8);
and(e[25],e[24],w9);
and(e[26],e[25],w10);
and(e[27],e[26],w11);
and(e[28],e[27],w12);
and(d7,e[28],w13);

and(e[29],c3,w5);
and(e[30],e[29],w6);
and(e[31],e[30],w7);
and(e[32],e[31],w8);
and(e[33],e[32],w9);
and(e[34],e[33],w10);
and(e[35],e[34],w11);
and(e[36],e[35],w12);
and(d8,e[36],w13);

and(e[37],c2,w4);
and(e[38],e[37],w5);
and(e[39],e[38],w6);
and(e[40],e[39],w7);
and(e[41],e[40],w8);
and(e[42],e[41],w9);
and(e[43],e[42],w10);
and(e[44],e[43],w11);
and(e[45],e[44],w12);
and(d9,e[45],w13);

and(e[46],c1,w3);
and(e[47],e[46],w4);
and(e[48],e[47],w5);
and(e[49],e[48],w6);
and(e[50],e[49],w7);
and(e[51],e[50],w8);
and(e[52],e[51],w9);
and(e[53],e[52],w10);
and(e[54],e[53],w11);
and(e[55],e[54],w12);
and(d10,e[55],w13);

and(e[56],c0,w2);
and(e[57],e[56],w3);
and(e[58],e[57],w4);
and(e[59],e[58],w5);
and(e[60],e[49],w6);
and(e[61],e[60],w7);
and(e[62],e[61],w8);
and(e[63],e[62],w9);
and(e[64],e[63],w10);
and(e[65],e[64],w11);
and(e[66],e[65],w12);
and(d11,e[66],w13);

or(e[67],c11,d1);
or(e[68],e[67],d2);
or(e[69],e[68],d3);
or(e[70],e[69],d4);
or(e[71],e[70],d5);
or(e[72],e[71],d6);
or(e[73],e[72],d7);
or(e[74],e[73],d8);
or(e[75],e[74],d9);
or(e[76],e[75],d10);
or(e[77],e[76],d0);
or(c,e[77],d11);

endmodule