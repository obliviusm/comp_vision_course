% Apply a median filter
% pkg load image;

%% Read an image
img = imread('bycicle.png');  % also try: brooklyn-bridge.png, penny-farthing.png
% imshow(img);

%% TODO: Add salt & pepper noise
img_noise = imnoise(img, 'salt & pepper', 0.02);
% imshow(img_noise);
%% TODO: Apply a median filter 
%  (how is the result different compared to Gaussian smoothing?)
median_filtered = medfilt2(img_noise);
imshow(median_filtered);