clc;
clear all;
cam = Movie('video_se1.mp4');
bg = cam.grab();

sigma = 2; %lower sigma, background updated better
while 1
    im = cam.grab;
    if isempty(im), 
      break; 
    end
    d = im-bg;
    d = max(min(d, sigma), -sigma); 
    bg=bg+d;
    idisp(bg); drawnow
end
close(cam);


%%
while 1
    im = cam.grab;
if isempty(im), break; end
    image(im)
end

