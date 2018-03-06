clc;
clear all;
cam = Movie('video_iphonese.mp4')

for i =1:100
    im = cam.grab;
end

%% image captured
figure
idisp(im);
title('Image Captured')
%% thresholding 
imthresh = (im >= 30) & (im<= 80);
figure
idisp(imthresh);
title('Thresholding')
%% negative
imneg = iint(ones(size(im))*255) - im;
figure
idisp(imneg);
title('Negative')
    
%%   posterization
figure
image_grey = imono(im);
idisp(image_grey/16);
title('Posterization')
%% edges
[imx,imy] = isobel(im);
ims = imx+imy;
   
figure
idisp(ims);
title('Edges')
close(cam);


