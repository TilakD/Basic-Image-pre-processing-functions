I = imread('yaleB01_P00A+035E+40.pgm');
J = histeq(I);
subplot(2,1,1);
imhist(I)
subplot(2,1,2);
imhist(J)
figure,imshow(I);
figure,imshow(J);