I1 = imread('13.  Right.jpg');
I2 = rgb2gray(I1);
[y, x]=size(I2);
SHizo = double(zeros(y, x));
I3=im2double(I2);
Xmin=double(127/255); 
Xmax=double(255/255);
Ymin=0; 
Ymax=1;
A=(Ymax-Ymin)/(Xmax-Xmin);
 
for i = 1:y
    for j = 1:x
        SHizo(i,j)= A*(I3(i,j)-Xmin)+Ymin;
    end
end
 
figure,imshow(SHizo);
figure, imhist(SHizo);