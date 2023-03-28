I=imread('13.  Right.jpg');

Id=imadjust(I, [0.6 1], [0 0.9],0.4);

figure, imshow(Id);
figure, imhist(Id);
