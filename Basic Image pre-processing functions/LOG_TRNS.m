clc; clear all; close all;
f=imread('yaleB01_P00A+035E+40.pgm');
%g=rgb2gray(f);

c=.5
[M,N]=size(f);
        for x = 1:M
            for y = 1:N
                m=double(f(x,y));
                z(x,y)=c.*log10(1+m); 
            end
        end
imshow(f), figure, imshow(z);