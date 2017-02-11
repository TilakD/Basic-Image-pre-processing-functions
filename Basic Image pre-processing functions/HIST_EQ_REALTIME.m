vid = videoinput('winvideo', 1);
set(vid, 'ReturnedColorSpace', 'RGB');
I= getsnapshot(vid);
I=rgb2gray(I);
J = histeq(I);
subplot(2,1,1);
imhist(I)
subplot(2,1,2);
imhist(J)
figure,imshow(I);
figure,imshow(J);