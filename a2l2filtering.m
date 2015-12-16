% Apply a Gaussian filter to remove noise
img = imread('img/saturn.png');
% imshow(img);
% surf(img);

% TODO: Add noise to the image
noise = randn(size(img)).*25;
img_noise = double(img) + noise;
% imshow(img_noise, []);
% TODO: Now apply a Gaussian filter to smooth out the noise
% Note: You may need to pkg load image
hsize = 12;
sigma = 3;
h = fspecial('gaussian', hsize, sigma).*0.005;

surf(h);
% imagesc(h);
outim = imfilter(img_noise, h);
imshow(outim);
