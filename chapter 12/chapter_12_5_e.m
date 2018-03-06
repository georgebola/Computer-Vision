%% rotate 60 degrees
rotated_kd= irotate(kdgauss(5), 60*pi/180);
about(rotated_kd)
image_rotate= iconv(lena, rotated_kd);

idisp(image_rotate, 'invsigned') 