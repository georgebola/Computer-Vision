%% erwthma 12_2
clc;
clear all;
cam = Movie('hst_1.mpg')

cam.size() %size of each frame

im1 = cam.grab('frame',60);
im2 = cam.grab('frame',300);
im3 = cam.grab('frame',500);

idisp({im1,im2,im3});

close(cam)

