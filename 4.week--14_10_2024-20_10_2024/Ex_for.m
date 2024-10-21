%Z=(x2+y2)/(x+y) denkleminde z bağımlı değişkeninin x=1,2,3,4 ve y=1,2 değerlerine göre alacağı değerleri
%hesaplatan bir program yazınız.
clc;
clear;
x=1:4;
y=1:2;
Z=zeros(length(x),length(y));
for i=1:length(x)
    for j=1:length(y)
       Z(i,j)=(x(i)^2+y(j)^2)/(x(i)+y(j));
    end
end