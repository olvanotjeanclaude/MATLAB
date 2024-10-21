clc;
clear;
close all;
n=input('Tek sayılı Terim Degeri:');
t=-2:.05:2;
w=2*pi;
A=1;
im=1;
x=zeros(size(t));
for i=1:2:n
    x=x+im.*cos(i*w.*t)./i
im=im*(-1);
end
x=4*A*x/pi;
plot(t,x)
grid