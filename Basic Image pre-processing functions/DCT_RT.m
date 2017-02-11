vid = videoinput('winvideo', 1);
set(vid, 'ReturnedColorSpace', 'RGB');
I = getsnapshot(vid);
I=rgb2gray(I);
J = dct2(I);
J(1,1) = 10.0e+3;
K = idct2(J);
figure, 
subplot(1,2,1)
 imshow(I)
subplot(1,2,2)
imshow(K,[0 255]) 
figure,
subplot(2,1,1);
imhist(I)
subplot(2,1,2);
imhist(K)