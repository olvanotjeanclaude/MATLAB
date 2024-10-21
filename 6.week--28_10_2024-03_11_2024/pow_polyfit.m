clear;
close all;
clc;
X=[eps:pi/100:pi/2]';
Y=sin(X);
plot(X,Y,'b-o')
u=log(X);
v=log(Y);
c=polyfit(u,v,1)
a=exp(c(2));
b=c(1);
Yp=a*X.^b
hold on;
plot(X,Yp,'r-*')
%[Y Yp]