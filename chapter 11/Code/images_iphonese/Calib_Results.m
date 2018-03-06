% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 983.099161431281573 ; 984.505544040573000 ];

%-- Principal point:
cc = [ 416.379672258610242 ; 584.159992084796045 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.015731007646742 ; 0.137919559502293 ; 0.007145055106758 ; -0.004327781788267 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 8.145094735649730 ; 8.201843590946053 ];

%-- Principal point uncertainty:
cc_error = [ 10.966687451839665 ; 10.588675542524234 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.042016838912463 ; 0.198285576331397 ; 0.004217108652535 ; 0.004110243591559 ; 0.000000000000000 ];

%-- Image size:
nx = 852;
ny = 1136;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 17;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.753880e+00 ; 1.780200e+00 ; -8.413830e-01 ];
Tc_1  = [ -2.567229e+01 ; -2.492436e+01 ; 1.551746e+02 ];
omc_error_1 = [ 8.119998e-03 ; 1.109824e-02 ; 1.557970e-02 ];
Tc_error_1  = [ 1.745249e+00 ; 1.675919e+00 ; 1.116599e+00 ];

%-- Image #2:
omc_2 = [ -1.569569e+00 ; -2.227977e+00 ; 5.542277e-01 ];
Tc_2  = [ -1.052964e+01 ; -4.738118e+01 ; 1.730323e+02 ];
omc_error_2 = [ 1.079258e-02 ; 1.118065e-02 ; 1.951390e-02 ];
Tc_error_2  = [ 1.969785e+00 ; 1.866889e+00 ; 1.457260e+00 ];

%-- Image #3:
omc_3 = [ -2.271647e+00 ; -1.910052e+00 ; -1.299304e-01 ];
Tc_3  = [ -3.223537e+01 ; -2.774005e+01 ; 1.311900e+02 ];
omc_error_3 = [ 1.258956e-02 ; 1.104867e-02 ; 2.515956e-02 ];
Tc_error_3  = [ 1.490292e+00 ; 1.435987e+00 ; 1.306747e+00 ];

%-- Image #4:
omc_4 = [ -1.783771e+00 ; -1.862268e+00 ; 9.669212e-01 ];
Tc_4  = [ -1.500770e+01 ; -3.449089e+01 ; 1.396347e+02 ];
omc_error_4 = [ 1.126303e-02 ; 7.577299e-03 ; 1.581411e-02 ];
Tc_error_4  = [ 1.589467e+00 ; 1.504047e+00 ; 9.675507e-01 ];

%-- Image #5:
omc_5 = [ 1.736310e+00 ; 2.034969e+00 ; 3.124984e-01 ];
Tc_5  = [ -7.275390e+00 ; -2.952157e+01 ; 1.354101e+02 ];
omc_error_5 = [ 1.077928e-02 ; 9.752932e-03 ; 1.778808e-02 ];
Tc_error_5  = [ 1.526161e+00 ; 1.461266e+00 ; 1.276901e+00 ];

%-- Image #6:
omc_6 = [ 1.437473e+00 ; 2.283795e+00 ; 2.036189e-01 ];
Tc_6  = [ 1.478020e+00 ; -5.008475e+01 ; 1.210988e+02 ];
omc_error_6 = [ 8.433212e-03 ; 1.123069e-02 ; 1.706556e-02 ];
Tc_error_6  = [ 1.397768e+00 ; 1.315156e+00 ; 1.190102e+00 ];

%-- Image #7:
omc_7 = [ -1.937402e+00 ; -2.131538e+00 ; 2.490501e-01 ];
Tc_7  = [ -1.933749e+01 ; -1.492915e+01 ; 1.438644e+02 ];
omc_error_7 = [ 9.605303e-03 ; 1.191305e-02 ; 2.320782e-02 ];
Tc_error_7  = [ 1.598627e+00 ; 1.559945e+00 ; 1.244250e+00 ];

%-- Image #8:
omc_8 = [ -1.785319e+00 ; -1.768921e+00 ; -1.274456e+00 ];
Tc_8  = [ -2.000983e+01 ; 7.962546e+00 ; 9.162026e+01 ];
omc_error_8 = [ 8.746610e-03 ; 1.229101e-02 ; 1.535342e-02 ];
Tc_error_8  = [ 1.033238e+00 ; 1.010543e+00 ; 1.023811e+00 ];

%-- Image #9:
omc_9 = [ -2.138659e+00 ; -2.131255e+00 ; -2.039530e-01 ];
Tc_9  = [ -2.612339e+01 ; -3.756941e+01 ; 1.126019e+02 ];
omc_error_9 = [ 1.031579e-02 ; 1.070950e-02 ; 2.274777e-02 ];
Tc_error_9  = [ 1.301861e+00 ; 1.245074e+00 ; 1.149668e+00 ];

%-- Image #10:
omc_10 = [ 1.937104e+00 ; 2.022313e+00 ; -6.368190e-02 ];
Tc_10  = [ -2.126216e+01 ; -4.270834e+01 ; 1.064435e+02 ];
omc_error_10 = [ 8.940931e-03 ; 1.006448e-02 ; 1.706029e-02 ];
Tc_error_10  = [ 1.228351e+00 ; 1.154893e+00 ; 1.009869e+00 ];

%-- Image #11:
omc_11 = [ -1.924287e+00 ; -1.820010e+00 ; -1.245320e+00 ];
Tc_11  = [ -1.873858e+01 ; -6.682914e+00 ; 8.058351e+01 ];
omc_error_11 = [ 7.760609e-03 ; 1.209488e-02 ; 1.616112e-02 ];
Tc_error_11  = [ 9.149499e-01 ; 8.801199e-01 ; 9.150845e-01 ];

%-- Image #12:
omc_12 = [ 1.644506e+00 ; 1.789363e+00 ; -7.247300e-01 ];
Tc_12  = [ -2.639219e+01 ; -2.076257e+01 ; 1.458835e+02 ];
omc_error_12 = [ 7.898616e-03 ; 1.069981e-02 ; 1.483359e-02 ];
Tc_error_12  = [ 1.630120e+00 ; 1.573856e+00 ; 1.039441e+00 ];

%-- Image #13:
omc_13 = [ -2.177757e+00 ; -2.173217e+00 ; -3.960579e-02 ];
Tc_13  = [ -2.181895e+01 ; -4.262063e+01 ; 1.412841e+02 ];
omc_error_13 = [ 1.446927e-02 ; 1.418719e-02 ; 3.073794e-02 ];
Tc_error_13  = [ 1.612999e+00 ; 1.538764e+00 ; 1.457611e+00 ];

%-- Image #14:
omc_14 = [ -1.885390e+00 ; -2.496605e+00 ; -2.769153e-01 ];
Tc_14  = [ -1.420786e+01 ; -3.955401e+01 ; 1.234371e+02 ];
omc_error_14 = [ 9.278526e-03 ; 1.345358e-02 ; 2.521414e-02 ];
Tc_error_14  = [ 1.416583e+00 ; 1.352382e+00 ; 1.288503e+00 ];

%-- Image #15:
omc_15 = [ 2.239300e+00 ; 2.003277e+00 ; 4.067051e-01 ];
Tc_15  = [ -1.241717e+01 ; -3.508456e+01 ; 1.670877e+02 ];
omc_error_15 = [ 1.458050e-02 ; 1.145314e-02 ; 2.647818e-02 ];
Tc_error_15  = [ 1.898273e+00 ; 1.798935e+00 ; 1.790956e+00 ];

%-- Image #16:
omc_16 = [ 1.969316e+00 ; 1.944770e+00 ; 4.110513e-01 ];
Tc_16  = [ -1.725078e+01 ; -3.227785e+01 ; 8.872423e+01 ];
omc_error_16 = [ 1.011731e-02 ; 7.971275e-03 ; 1.648722e-02 ];
Tc_error_16  = [ 1.029205e+00 ; 9.630941e-01 ; 8.883847e-01 ];

%-- Image #17:
omc_17 = [ -2.201879e+00 ; -2.183742e+00 ; -1.966302e-01 ];
Tc_17  = [ -2.164742e+01 ; -3.452807e+01 ; 2.104498e+02 ];
omc_error_17 = [ 2.329526e-02 ; 2.398392e-02 ; 5.100320e-02 ];
Tc_error_17  = [ 2.380206e+00 ; 2.282829e+00 ; 2.578842e+00 ];

