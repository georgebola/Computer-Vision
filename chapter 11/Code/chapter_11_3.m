clear all;
clc;

cam = CentralCamera('focal', 0.015, 'pixel', 10e-6, ...
'resolution', [1280 1024], 'centre', [640 512], 'name', 'mycamera')

[X,Y,Z] = mkcube(0.2, 'T', transl([0, 0, 1]), 'edge');

zita = [0:0.03:1.2];
Tcam = transl(0,0,0);
 for z=zita
    Tcam = transl(0, 0, z)
    cam.mesh( X, Y, Z, 'Tcam', Tcam )
    drawnow
    cam.clf
 end