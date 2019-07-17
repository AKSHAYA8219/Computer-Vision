hsize=31;
sigma=5;
h=fspecial('gaussian',hsize,sigma);
surf(h);
imagesc(h);
outim=imfilter(github,h);
imshow(outim);