P = mkcube(0.2);
T_unknown = transl(0.1, 0.2, 1.5) * rpy2tr(0.1, 0.2, 0.3);
cam = CentralCamera('focal', 0.015, ...
'pixel', 10e-6, 'resolution', [1280 1024], 'centre', [512 512], ...
'noise', 0.05);
p = cam.project(P, 'Tobj', T_unknown);
C = camcald(P, p);
est = invcamcal(C);
true_error=est.f/est.rho(1) %error of true pose
estimated_error=cam.f/cam.rho(2) %error of the estimated pose
orientation_error=est.f/est.rho(1)-cam.f/cam.rho(2) %error of true pose and estimated pose
