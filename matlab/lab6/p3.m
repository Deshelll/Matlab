I=imread('koshka.jpg');

Id=imadjust(I, [0 1], [0 1],1.2);

figure, imshow(Id);
figure, imhist(Id);