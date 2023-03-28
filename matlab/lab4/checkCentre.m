I1 = imread('13. Centre.jpg');
[y, x]=size(I1);
SHizo = double(zeros(y, x));
I3=im2double(I1);
Xmin=double(62/255); 
Xmax=double(172/255);
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