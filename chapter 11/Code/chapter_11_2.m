clear all;
clc;

cam = CentralCamera('focal', 0.015, 'pixel', 10e-6, ...
'resolution', [1280 1024], 'centre', [640 512], 'name', 'mycamera')

[X,Y,Z] = mkcube(0.2, 'T', transl([0, 0, 1]), 'edge');

theta= [0:2*pi/180:2*pi];

for th=theta
    Tcam = transl(cos(th),0,1+sin(th))*troty(-pi/2-th); %polar coo
    cam.mesh( X, Y, Z, 'Tcam', Tcam);
    drawnow
    cam.clf
end