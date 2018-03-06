clear all;
clc;

%cube
cam = CentralCamera('focal', 0.015, 'pixel', 10e-6, ...
'resolution', [1280 1024], 'centre', [640 512], 'name', 'mycamera')

[X,Y,Z] = mkcube(0.2, 'T', transl([0, 0, 1]), 'edge');
cam.mesh(X, Y, Z)  %display it
%% dif cube pose
Tcam = transl(-1,0,0.5)*troty(1);
cam.mesh(X, Y, Z, 'Tcam', Tcam);


%% dif cam + dif pose

cam = CentralCamera('focal', 0.01, 'pixel', 10e-6, ...
'resolution', [1280 720], 'centre', [640 512], 'name', 'camera f=0.01 , 1280x720')
th=30*pi/180
Tcam = transl(cos(th),0,1+sin(th))*troty(-pi/2-th);
cam.mesh(X, Y, Z, 'Tcam', Tcam);