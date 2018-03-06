clc;
clear all;
cam = Movie('video_se1.mp4');
bg = cam.grab();

sigma = 2;
for i = 1 : 500
    im = cam.grab();
    if isempty(im)
        break;
    end
    d = im-bg;
    fg = max(min(d, sigma), -sigma);
    bg = bg + fg;
%   d1 = (d >= 30) & (d<= 80);
 
    idisp(d,'invsigned');
    drawnow;
end

close(cam);