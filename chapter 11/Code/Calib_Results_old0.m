% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 657.395347879194560 ; 657.763094085711941 ];

%-- Principal point:
cc = [ 302.983676537988799 ; 242.616301116957686 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.255839183129759 ; 0.127576673151402 ; -0.000208100956512 ; 0.000033479324905 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 0.346911741667289 ; 0.371112305236084 ];

%-- Principal point uncertainty:
cc_error = [ 0.705463800706837 ; 0.645527442815917 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.002706688203314 ; 0.010758228768333 ; 0.000145789085445 ; 0.000144007631418 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.654779e+00 ; 1.651918e+00 ; -6.699925e-01 ];
Tc_1  = [ -1.775774e+02 ; -8.374084e+01 ; 8.529831e+02 ];
omc_error_1 = [ 8.237489e-04 ; 1.064559e-03 ; 1.360699e-03 ];
Tc_error_1  = [ 9.161027e-01 ; 8.447697e-01 ; 4.641402e-01 ];

%-- Image #2:
omc_2 = [ 1.849011e+00 ; 1.900560e+00 ; -3.971213e-01 ];
Tc_2  = [ -1.549645e+02 ; -1.593546e+02 ; 7.576048e+02 ];
omc_error_2 = [ 8.655039e-04 ; 1.057837e-03 ; 1.645355e-03 ];
Tc_error_2  = [ 8.179971e-01 ; 7.488546e-01 ; 4.562454e-01 ];

%-- Image #3:
omc_3 = [ 1.742391e+00 ; 2.077563e+00 ; -5.052451e-01 ];
Tc_3  = [ -1.252425e+02 ; -1.746277e+02 ; 7.754805e+02 ];
omc_error_3 = [ 7.921063e-04 ; 1.120867e-03 ; 1.700924e-03 ];
Tc_error_3  = [ 8.361743e-01 ; 7.663268e-01 ; 4.385831e-01 ];

%-- Image #4:
omc_4 = [ 1.827858e+00 ; 2.116776e+00 ; -1.103193e+00 ];
Tc_4  = [ -6.443331e+01 ; -1.548703e+02 ; 7.791043e+02 ];
omc_error_4 = [ 7.109839e-04 ; 1.161242e-03 ; 1.592719e-03 ];
Tc_error_4  = [ 8.427319e-01 ; 7.648944e-01 ; 3.533141e-01 ];

%-- Image #5:
omc_5 = [ 2.180066e+00 ; 6.126069e-01 ; 6.174983e-01 ];
Tc_5  = [ -1.663578e+02 ; -3.615265e+01 ; 4.794442e+02 ];
omc_error_5 = [ 1.100547e-03 ; 6.691540e-04 ; 1.296413e-03 ];
Tc_error_5  = [ 5.297624e-01 ; 4.818331e-01 ; 4.207518e-01 ];

%-- Image #6:
omc_6 = [ -1.701812e+00 ; -1.929291e+00 ; -7.914701e-01 ];
Tc_6  = [ -1.489024e+02 ; -7.964769e+01 ; 4.449783e+02 ];
omc_error_6 = [ 6.674800e-04 ; 1.081016e-03 ; 1.464361e-03 ];
Tc_error_6  = [ 4.810537e-01 ; 4.512357e-01 ; 3.694874e-01 ];

%-- Image #7:
omc_7 = [ 1.996748e+00 ; 1.931472e+00 ; 1.310634e+00 ];
Tc_7  = [ -8.293235e+01 ; -7.773534e+01 ; 4.401758e+02 ];
omc_error_7 = [ 1.278362e-03 ; 6.563940e-04 ; 1.535911e-03 ];
Tc_error_7  = [ 4.832971e-01 ; 4.409766e-01 ; 3.901099e-01 ];

%-- Image #8:
omc_8 = [ 1.961458e+00 ; 1.824261e+00 ; 1.326197e+00 ];
Tc_8  = [ -1.701121e+02 ; -1.035605e+02 ; 4.620732e+02 ];
omc_error_8 = [ 1.220036e-03 ; 6.695322e-04 ; 1.473027e-03 ];
Tc_error_8  = [ 5.283967e-01 ; 4.790943e-01 ; 4.394752e-01 ];

%-- Image #9:
omc_9 = [ -1.363691e+00 ; -1.980542e+00 ; 3.210319e-01 ];
Tc_9  = [ -1.878710e+00 ; -2.251588e+02 ; 7.286464e+02 ];
omc_error_9 = [ 8.318216e-04 ; 1.068290e-03 ; 1.376511e-03 ];
Tc_error_9  = [ 7.919950e-01 ; 7.188155e-01 ; 4.491840e-01 ];

%-- Image #10:
omc_10 = [ -1.513265e+00 ; -2.086817e+00 ; 1.882465e-01 ];
Tc_10  = [ -2.960784e+01 ; -3.004309e+02 ; 8.601618e+02 ];
omc_error_10 = [ 1.014556e-03 ; 1.214632e-03 ; 1.830495e-03 ];
Tc_error_10  = [ 9.517847e-01 ; 8.544740e-01 ; 5.961766e-01 ];

%-- Image #11:
omc_11 = [ -1.793085e+00 ; -2.064817e+00 ; -4.799214e-01 ];
Tc_11  = [ -1.510537e+02 ; -2.353638e+02 ; 7.047465e+02 ];
omc_error_11 = [ 9.101242e-04 ; 1.146143e-03 ; 1.970019e-03 ];
Tc_error_11  = [ 7.802687e-01 ; 7.317392e-01 ; 5.897813e-01 ];

%-- Image #12:
omc_12 = [ -1.839113e+00 ; -2.087345e+00 ; -5.155436e-01 ];
Tc_12  = [ -1.334802e+02 ; -1.772297e+02 ; 6.049746e+02 ];
omc_error_12 = [ 7.758649e-04 ; 1.101384e-03 ; 1.817447e-03 ];
Tc_error_12  = [ 6.645809e-01 ; 6.187298e-01 ; 4.931217e-01 ];

%-- Image #13:
omc_13 = [ -1.919019e+00 ; -2.116536e+00 ; -5.941698e-01 ];
Tc_13  = [ -1.326918e+02 ; -1.435601e+02 ; 5.448015e+02 ];
omc_error_13 = [ 7.237309e-04 ; 1.090138e-03 ; 1.786809e-03 ];
Tc_error_13  = [ 5.967563e-01 ; 5.538369e-01 ; 4.475421e-01 ];

%-- Image #14:
omc_14 = [ -1.954383e+00 ; -2.124577e+00 ; -5.844155e-01 ];
Tc_14  = [ -1.235974e+02 ; -1.371429e+02 ; 4.909029e+02 ];
omc_error_14 = [ 6.811546e-04 ; 1.068393e-03 ; 1.749258e-03 ];
Tc_error_14  = [ 5.384988e-01 ; 4.985603e-01 ; 4.016645e-01 ];

%-- Image #15:
omc_15 = [ -2.110763e+00 ; -2.253834e+00 ; -4.948457e-01 ];
Tc_15  = [ -1.991404e+02 ; -1.345095e+02 ; 4.750400e+02 ];
omc_error_15 = [ 7.861858e-04 ; 1.000604e-03 ; 1.906498e-03 ];
Tc_error_15  = [ 5.281411e-01 ; 4.944589e-01 ; 4.329014e-01 ];

%-- Image #16:
omc_16 = [ 1.886909e+00 ; 2.336195e+00 ; -1.735758e-01 ];
Tc_16  = [ -1.593424e+01 ; -1.703338e+02 ; 6.955668e+02 ];
omc_error_16 = [ 1.080868e-03 ; 1.141775e-03 ; 2.373491e-03 ];
Tc_error_16  = [ 7.512687e-01 ; 6.820887e-01 ; 5.126737e-01 ];

%-- Image #17:
omc_17 = [ -1.612908e+00 ; -1.953394e+00 ; -3.473542e-01 ];
Tc_17  = [ -1.352327e+02 ; -1.389560e+02 ; 4.901887e+02 ];
omc_error_17 = [ 6.730105e-04 ; 1.029433e-03 ; 1.450973e-03 ];
Tc_error_17  = [ 5.315842e-01 ; 4.945583e-01 ; 3.560027e-01 ];

%-- Image #18:
omc_18 = [ -1.341751e+00 ; -1.692559e+00 ; -2.970117e-01 ];
Tc_18  = [ -1.853693e+02 ; -1.577999e+02 ; 4.412934e+02 ];
omc_error_18 = [ 7.723996e-04 ; 1.000083e-03 ; 1.145505e-03 ];
Tc_error_18  = [ 4.832919e-01 ; 4.508077e-01 ; 3.458154e-01 ];

%-- Image #19:
omc_19 = [ -1.925985e+00 ; -1.837926e+00 ; -1.440322e+00 ];
Tc_19  = [ -1.065657e+02 ; -7.957188e+01 ; 3.341594e+02 ];
omc_error_19 = [ 6.643734e-04 ; 1.171549e-03 ; 1.484621e-03 ];
Tc_error_19  = [ 3.750237e-01 ; 3.440401e-01 ; 3.243328e-01 ];

%-- Image #20:
omc_20 = [ 1.896147e+00 ; 1.593137e+00 ; 1.471912e+00 ];
Tc_20  = [ -1.438343e+02 ; -8.803625e+01 ; 3.961774e+02 ];
omc_error_20 = [ 1.237531e-03 ; 6.846318e-04 ; 1.333991e-03 ];
Tc_error_20  = [ 4.577415e-01 ; 4.100509e-01 ; 3.923652e-01 ];

