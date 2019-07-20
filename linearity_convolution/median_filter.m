%Apply median filter
pkg load image;

%Read an image
img=imread('moon.jpg');
%imshow(img);

%Add salt and pepper noise
noisy_img=imnoise(img,'salt & pepper',0.02);
imshow(noisy_img);

%Apply median filter
median_filtered=medfilt2(noisy_img);
imshow(median_filtered);
