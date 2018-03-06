clc;
clear all;

cam = CentralCamera('focal', 0.015, 'pixel', 10e-6, ...
'resolution', [1280 1024], 'centre', [512 512], 'name', 'mycamera') %xwris distortion

P = mkgrid(10, 0.5, 'T', transl(0.1, 0, 1.0));
cam.plot(P)

%% with random distortion

cam_dist = CentralCamera('focal', 0.015, 'pixel', 10e-6, ... 
    'resolution', [1280 1024], 'centre', [512 512], ... 
    'distortion', [0 -0.5 0.5 0 1] )                    %me distortion

cam_dist.plot(P)

%auksanontas tis 3 prwtes pane oi grammes pros ta mesa (Pincushion)
%meiwnontas(arnhtika) tis 3 pane oi grammes pros ta ekso (barrel)

%% Pincushion distortion

cam_pin = CentralCamera('focal', 0.015, 'pixel', 10e-6, ... 
    'resolution', [1280 1024], 'centre', [512 512], 'name', 'Grid-Pincushion distortion', ... 
    'distortion', [0.5 0.5 0.5 0 0] )                    %me distortion

cam_pin.plot(P)

%% barrel distortion

cam_bar = CentralCamera('focal', 0.015, 'pixel', 10e-6, ... 
    'resolution', [1280 1024], 'centre', [512 512],'name', 'Grid-Barrel distortion', ... 
    'distortion', [-0.8 -0.8 -0.8 0 0] )                    %me distortion

cam_bar.plot(P)

