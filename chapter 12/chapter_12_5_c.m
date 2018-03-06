clear all;
clc;
lena = iread('castle.jpg', 'double','grey');
%simple horizontal gradient kernel K
K = [-0.5 0 0.5];
im3= iconv(lena, K);

%sobel kernel
Du = ksobel;
im6=iconv(lena,Du); %horizontal mono
%vgazei horizontal
%im4= iconv(lena, Du);
%vgazei vertical
%im5= iconv(lena, Du');

%im6=(im4.^2+im5.^2).^(1/2);
%idisp(isobel(im6));
idisp({im3, im6}, 'invsigned')
title('Horizontal Kernel  -  Sobel Kernel')