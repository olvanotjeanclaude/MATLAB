
clc;
clear;
%fist=[4 8 12 16 20 24 28 32 36 40] vektörünü oluşturunuz ve
fist = [4:4:40]

%fist vektörünün ortalama değerini bulunuz.
ort=mean(fist)
ortalam=sum(fist)/length(fist)

%fist vektörünün standart sapmasını bulunuz.
std(fist,1)

%fist vektörünün değerlerinin karaköklerinin toplamını bulunuz.
sqrt(fist)

%fist vektörünün her bir elemanının 5 sayısına bölünmesiyle oluşan vektörü bulunuz.
fist ./ 5

%4 sabit sayısının fist vektörünün her bir elemanına bölünmesiyle oluşan vektörü bulunuz.
4./fist