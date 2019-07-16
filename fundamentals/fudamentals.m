%Read an image github.png
img=imread('fruits.jpg');

%load the image
imshow(img);

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