clear;
close all;
clc;
X=[eps:pi/100:pi/2]';
Y=sin(X);
plot(X,Y,'b-o')
%u=log(X);
v=log(Y);
c=polyfit(X,v,1)
a=exp(c(2));
b=c(1);
Yexp=a*exp(b.*X)
hold on;
plot(X,Yexp,'r-*')
%[Y Yp]