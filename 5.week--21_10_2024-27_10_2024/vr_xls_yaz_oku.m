clc;
clear;
a=magic(4);
xlswrite('yaz.xlsx',a)
%yaz.xlsx değiştirildi
b=xlsread('yaz.xlsx')
pause
i=isnan(b)
b(i)=0
%belli bir satır yada sütun okundu
c=xlsread('yaz.xlsx','page','B1:B4')
