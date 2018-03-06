clc;
clear all;
cam = Movie('video_se1.mp4');

img = iread('desert1.jpeg');
bg = cam.grab();

img = isamesize(idouble(img), bg);
sigma = 2;
while 1
    im = cam.grab();
    if isempty(im)
        break;
    end
    diff = im-bg;
    fg = max(min(diff, sigma), -sigma);
    bg = bg + fg;
    fg = diff > 40;
    idisp(fg.*idouble(im) + (1-fg).*img);
    drawnow;
end

close(cam);