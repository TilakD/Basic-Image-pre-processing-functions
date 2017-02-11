%GAMMA CORRECTION REAL TIME
vid = videoinput('winvideo', 1);
set(vid, 'ReturnedColorSpace', 'RGB');
x= getsnapshot(vid);
hgamma = ...
   vision.GammaCorrector(5,'Correction','gamma');
y = step(hgamma, x);
imshow(x); title('Original Image');
figure, imshow(y); 
title('Enhanced Image after gamma Correction');
subplot(2,1,1);
 imhist(x);title('Histogram of Original Image and its enhanced image');
  subplot(2,1,2);
 imhist(y); 
 