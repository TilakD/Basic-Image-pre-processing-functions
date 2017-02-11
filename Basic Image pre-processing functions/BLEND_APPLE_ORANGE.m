


clear
clc
% input image name
appleImgName = 'apple1.jpg';
orangeImgName = 'orange1.jpg';
% read images
apple = imread(appleImgName);
orange = imread(orangeImgName);
% convert to double type
apple = double(apple);
orange = double(orange);
% check to see if the dimensions are the same
if(~((size(apple, 1) == size(orange, 1)) && (size(apple, 2) == size(orange, 2))))
    error('Size does not match!');
end
% get dimension information
height = size(apple, 1);
width = size(apple, 2);
channel = size(apple, 3);
% weight vector 
weightApple = 1 : -1/(width-1) : 0;
% weight matrix: repeat of weight vector
weightAppleMatrix = repmat(weightApple, size(apple, 1), 1);
% weight vector 
weightOrange = 1 - weightApple;
% weight matrix: repeat of weight vector
weightOrangeMatrix = repmat(weightOrange, size(orange, 1), 1);

% create the blending image
blendingImg = zeros(size(apple));
% compute pixel value for blending image
for i = 1 : channel
    blendingImg(:, :, i) = apple(:, :, i) .* weightAppleMatrix + orange(:, :, i) .* weightOrangeMatrix;
end
% convert output image into uint8 type
blendingImg = uint8(blendingImg);
% display the output image
figure;
imshow(blendingImg);
title('Image blending example: appange? oranple?');
% write the output image to disk
blendingImgName = 'blending.jpg';
imwrite(blendingImg, blendingImgName, 'jpg');

figure;
imshow(uint8(apple));
title('apple');
figure;
imshow(uint8(orange));
title('orange');

