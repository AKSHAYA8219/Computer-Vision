%Smoothening using Gaussian

%  hsize-size of the kernal
%  fspecial()- build filters for you
%  surf()- plot the surface
%  imagesc()- show as an image
%  imfilter()- for filtering
img=imread('github.png');
hsize=31;
sigma=5;
h=fspecial('gaussian',hsize,sigma);
surf(h);
imagesc(h);
outim=imfilter(img,h);
imshow(outim);


%depending on the size of sigma, we will get different amounts of smoothening
%greater value of sigma -> more blur
for sigma=1:3:10
  h=fspecial('gaussian',hsize,sigma);
  out=imfilter(img,h);
  imshow(out);
  pause;
endfor


%Remove noise with a Gaussian filter
%Add some noise
noise_sigma=25;
noise=randn(size(img))*noise_sigma;
noisy_img=img+noise;
imshow(noisy_img);
%create a Gaussian Filter
filter_size=11;
filter_sigma=2;
filter=fspecial('gaussian',filter_size,filter_sigma);
%Apply the filter to remove noise
smoothed=imfilter(noisy_img,filter);
imshow(smoothed);
