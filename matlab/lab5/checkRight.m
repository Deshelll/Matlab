I1 = imread('13.  Right.jpg');
I2 = im2gray(I1);
[y, x]=size(I2);
SHizo = double(zeros(y, x));
I3=im2double(I2);
XFmax=double(max(max(I2)));
p = 0:XFmax;
F = p.*(XFmax-p);
plot(F)
Xmax = max(max(I3));
Ymax=(Xmax^2)/4;
k = 1/Ymax; 
for i = 1:y
    for j = 1:x
        SHizo(i,j)= k*(I3(i,j)*(Xmax-I3(i,j)));
    end
end
figure, imhist(I2)
figure,imshow(SHizo)
figure,imhist(SHizo)