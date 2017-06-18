%Diavasma tis eikonas opencv.png
%Indexed eikona tupou double [0 255]
[X,map]=imread('opencv.png');
%Metatropi apo Indexed se RGB
x=ind2rgb(X,map);
%Metatropi se uint8
x=im2uint8(x);
%Diavasma tis eikonas messi.png
y=imread('messi.png');
%Megethos tis eikonas x 
[M N]=size(x);
%Megethos tis eikonas y
[M1 N1]=size(y);
for i=1:size(x,1)
    for j=1:size(x,2)
        %Euresi olwn twn pixels pou den einai maura
        if (x(i,j,1)~=0 || x(i,j,2)~=0 || x(i,j,3)~=0)
            %Ekxwrisi tis eikonas x stin y
            y(i,j,1)= x(i,j,1);
            y(i,j,2)=  x(i,j,2);
            y(i,j,3)=  x(i,j,3);
        end 
    end
end
%Emfanisi tis telikis eikonas
figure; imshow(y)
