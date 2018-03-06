clear all;
clc;
lena = iread('castle.jpg', 'double','grey');

G1 = kgauss(2,2);
G2 = kgauss(4,6);
G3 = kgauss(6,6);
G4 = kgauss(7,11);
 
figure
idisp( iconv(lena,G1));
title('sigma=2, size=2')
figure
idisp( iconv(lena,G2));
title('sigma=4, size=6')
figure
idisp( iconv(lena,G3));
title('sigma=6 size=6')
figure
idisp( iconv(lena,G4));
title('sigma=7 size=11')
