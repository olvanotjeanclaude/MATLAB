clear;
close all;
clc;
X=[0:pi/100:2*pi]';
Y=sin(X);
plot(X,Y,'b-o')
A=[];
A=[X.^2 X ones(size(X,1),1)]
format long
C=inv(A'*A)*A'*Y
%2.Degree
C2=polyfit(X,Y,2)
Y2=polyval(C2,X);
sse=sum((Y-Y2).^2)%sum of squared error
rsse=sum((Y-Y2).^2)/length(Y)% relative sum of squared error
prsse=sum((Y-Y2).^2)/length(Y)*100%percent relative sum of squared error
hold on
plot(X,Y2,'r-*')
%3.Degree
C3=polyfit(X,Y,3)
Y3=polyval(C3,X);
sse=sum((Y-Y3).^2)%sum of squared error
rsse=sum((Y-Y3).^2)/length(Y)% relative sum of squared error
prsse=sum((Y-Y3).^2)/length(Y)*100%percent relative sum of squared error
hold on
plot(X,Y3,'k->')
figure
plot(X,Y)
rmse=sqrt(mean((Y-Y3).^2))
SSyy=sum((Y3-mean(Y3)).^2)
SSE=sum((Y-Y3).^2)
R2=(SSyy-SSE)/SSyy%1-SSE/SSyy