I2=imread('koshka.jpg');

figure, imhist(I2);
Id=imadjust(I2, [0 1], [1 0]);
figure, imhist(Id);
figure, imshow(Id);