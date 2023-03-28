I1 = imread('13. Left.jpg');
[y, x]=size(I1);
SHizo = double(zeros(y, x));
I2=im2double(I1);
Xmin=double(0/255); 
Xmax=double(128/255);
Ymin=0; 
Ymax=1;
A=(Ymax-Ymin)/(Xmax-Xmin);
 
for i = 1:y
    for j = 1:x
        SHizo(i,j)= A*(I2(i,j)-Xmin)+Ymin;
    end
end
 
figure,imshow(SHizo);
figure, imhist(SHizo);