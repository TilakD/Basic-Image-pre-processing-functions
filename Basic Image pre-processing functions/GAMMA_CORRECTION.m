%GAMMA CORRECTION
 hgamma = ...
   vision.GammaCorrector(5,'Correction','gamma');
 x = imread('yaleB01_P00A+035E+40.pgm');
 y = step(hgamma, x);

 imshow(x); title('Original Image');
 figure, imshow(y); 
 title('Enhanced Image after gamma Correction');
 figure
 subplot(2,1,1);
 imhist(x);title('Histogram of Original Image and its enhanced image');
  subplot(2,1,2);
 imhist(y); 