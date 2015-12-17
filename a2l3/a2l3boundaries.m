% Explore edge options
% pkg load image;

%% Load an image
img = imread('fall-leaves.png');  % also available: peppers.png, mandrill.png
imshow(img);

%% TODO: Create a Gaussian filter
hsize = 21;
sigma = 3;
filter = fspecial('gaussian', hsize, sigma);
%% TODO: Apply it, specifying an edge parameter (try different parameters)
% symmetric, replicate, cicrular, X
smoothed = imfilter(img, filter, 'circular'); 
imshow(smoothed);