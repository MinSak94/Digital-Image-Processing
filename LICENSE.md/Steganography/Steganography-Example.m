%Ergasia 3 Minas Saker 43880 7o examino Tmima Deutera 11:00-13:00
clear all
%Fortosi tis eikonas pou exei upostei steganographia
load stego.mat
%Megethos Eikonas
[r,c]=size(im_coded);
%Steganographimeno keimeno 106 xaraktirwn ara 106*8 = 848 bits
len=106*8;
%Anastrofi tou pinaka
im_coded=im_coded';

for i=1:len
    %Metatropi twn timwn twn prwtn 848 pixels se binary morfi
    dec_bin=dec2bin(im_coded(i),8);
    %Exagwgi tou 8o (LSB) bit apo kathe timi pixel gia ta prwta 848 pixels
    bin_txt(i)=dec_bin(8);
end
  

k=1;
for j=1:106
    %Metatropi tou duadikou mhnymatos se dekadiki morfi
    decode(j)=bin2dec(bin_txt(k:(k-1)+8));
    k=k+8;
end
%Teliko mhnyma
msg=char(decode);