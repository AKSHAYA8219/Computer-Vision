%Read an image github.png
img=imread('fruits.jpg');

%load the image
imshow(img);
imshow(img,[low high]); %lower than low gives black and higher than high gives white 

%display the size of the image
disp(size(img));

%display the class 
disp(class(img));

%to find the value at position (x,y)
disp(img(50,100));

%to find the value for an entire row
disp(img(50,:));

%to plot the values for an entire row
plot(img(50,:));

%value for a slice of image
disp(img(101:103,201:203));

%crop image
cropped=img(1:250,1:250);

%to display the red channel
img_red=img(:,:,1);

%to display the green channel
img_green=img(:,:,2);

%to display the blue channel
img_blue=img(:,:,3);

%addition of two images
%images must have same dimensions
dolphin=imread('dolphin.jpg');
github=imread('github.jpg');
summed=dolphin+github;
imshow(summed);

%add images by taking average of control the intensity
sum1=(dolphin+github)/2;
sum2=(dolphin/2)+(github/2);
imshow(sum1);
imshow(sum2);

%Multiply by a scalar
imshow(dolphin*0.5);
imshow(dolphin*1.5);
imshow(dolphin*2);

%Blend two images
%make the sum as two to retain the intensity
blended_img=dolphin*0.85+github*0.15

%function to blend two images
function output=blend(a,b,alpha)
  output=alpha*a+(1-alpha)*b;
endfunction
result=blend(dolphin,github,0.85);
imshow(result);

%Difference of two images
%order matters
%brighter areas indicate where the two images differ more
result=dolphin-github;
result1=github-dolphin;

%absolute difference between two images
%makes no difference since subtraction is performed first -> loose out negative values
result=abs(dolphin-github);

%To preserve image difference
%dolphin-github=0 when value of github>value of dolphin. and vice versa
%or convert to floating point value(it can represent negative numbers)
result=(dolphin-github)+(github-dolphin)
%or use the imabsdiff function from the image package
%the order doesnt matter
pkg load image;
abs_diff=imabsdiff(dolphin,github);
imshow(abs_diff);

%Generate Gaussian noise
%rand-generate radom number from a uniform distribution
%randn-generate random number from a normal distribution
%randi-generate random integers
some_number=randn(); %generate a random number
some_row_vector=randn([1 5]); %generate a row vector with 5 columns
some_matrix=randn([2 3]); %generate a matrix of size 2X3
%these random bunch of numbers are called noise
%randn draws these numbers from a Gaussian or random normal distribution

%adding noise to an image
%randn is function which generates noise with mean=0 and standard deviation=1
%sigma is the scaling factor. multiplying with sigma makes the standard deviation as sigma
noise=randn(size(github))*sigma; % use diff range of values for sigma like 5,50,100 etc
result=github+noise;
