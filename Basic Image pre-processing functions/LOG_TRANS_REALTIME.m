clc; clear all; close all;
vid = videoinput('winvideo', 1);
set(vid, 'ReturnedColorSpace', 'RGB');
img = getsnapshot(vid);
imshow(img)

f=rgb2gray(img);

c=.5
[M,N]=size(f);
        for x = 1:M
            for y = 1:N
                m=double(f(x,y));
                z(x,y)=c.*log10(1+m); 
            end
        end
figure,
subplot(1,2,1)
 imshow(f),title('The original image') 
subplot(1,2,2)
imshow(z) ,title('Enhanced Counterpart')
