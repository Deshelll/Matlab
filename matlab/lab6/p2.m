I=imread('test.jpg');
figure, imhist(I);
Id=imadjust(I, [0 0.3], [0.1 1]);

figure, imshow(Id);
figure, imhist(Id);