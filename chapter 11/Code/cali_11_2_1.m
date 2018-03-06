clc;
clear all;

P = mkcube(0.2);

T_unknown = transl(0.1, 0.2, 1.5) * rpy2tr(0.1, 0.2, 0.3); %unkown pose

cam = CentralCamera('focal', 0.015, ...
'pixel', 10e-6, 'resolution', [1280 1024], 'centre', [512 512], ... 
'noise', 0.05);                         %perspective camera
                                        %   zero-mean Gaussian noise with s = 0.05                                      
%image plane coordinates of the calibration target at its ?unknown? pose                                         
p = cam.project(P, 'Tobj', T_unknown);
%estimate the camera matrix
C = camcald(P, p)
%investigate
%maximum residual is less than 0.1 pixel
%cannot estimate lens distortion parameters (low errors from distortion)

