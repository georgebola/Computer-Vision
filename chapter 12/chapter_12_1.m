clc;
clear all;
%% grey image
chess= iread('chess_grey_scale.tif');

about(chess);
idisp(chess);

%% color image
eiffel= iread('eiffel.jpg');

pix = eiffel(276,318,:)
about(pix)

% gia na ginei grey: 
% eiffel= iread('eiffel.jpg','grey');



