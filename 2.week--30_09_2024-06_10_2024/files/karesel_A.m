clc;
clear;
N=input('N=');
M=input('M=');
A=zeros(N,M);
A(:,1)=rand(N,1);
for i=2:M
    A(:,i)=A(:,i-1).^2
    pause(2);
end