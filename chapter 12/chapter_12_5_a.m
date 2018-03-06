clear all;
clc;
lena = iread('castle.jpg', 'double','grey');

% chapter 12_5_1 smoothing
%% uniform kernel
K = ones(21,21) / 21^2; %21x21 uniform
about(K)
im1= iconv(K, lena);

% gaussian kernel
K = kgauss(5); % s=3.2 gia na ginei 21x21
about(K)
im2= iconv(K, lena) ;
idisp({im1,im2})
title('Uniform Kernel  -  Gaussian Kernel')

%toolbox function ismooth
%idisp( ismooth(lena, 5) ) 






%% analytically derivative of the gaussian??
w=10
ww = 2*w + 1;
[x,y] = meshgrid(-w:w, -w:w);
m = -x/sigma^2 /(2*pi) .*  exp( -(x.^2 + y.^2)/2/sigma^2);
Iu = iconv( lena, m );
idisp(Iu, 'invsigned')

%% derivative of the Gaussian in x-direction
Iu = iconv( lena, kdgauss(2) ); %horizontal
Iv = iconv( lena, kdgauss(2)' ); %vertical
m = sqrt( Iu.^2 + Iv.^2 );
idisp(m, 'invsigned')


%% Laplacian of the Gaussian

L = klaplace()

lap = iconv( lena, klog(2) );
idisp(lap, 'invsigned')




