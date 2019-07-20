%Explore edge operations
pkg load image;

%read an image
img=imread('leaves.jpg');
imshow(img);

%create a Gaussian filter
filter_size=21;
filter_sigma=3;
filter=fspecial('gaussian',filter_size,filter_sigma);

%Apply the filter by specifying the edge parameter

%clip filter
clip_smoothed=imfilter(img,filter,0);% default
imshow(clip_smoothed);
%wrap around
wrap_smoothed=imfilter(img,filter,'circular');
imshow(wrap_smoothed);
%copy edge
copy_smoothed=imfilter(img,filter,'replicate');
imshow(copy_smoothed);
%reflect across edges
reflect_smoothed=imfilter(img,filter,'symmetric');
imshow(reflect_smoothed);