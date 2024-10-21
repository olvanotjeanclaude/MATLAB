clc;
clear;
format long
k=input('pi terim sayısı:');
%N=1:k;
%pi_s=sqrt(6*sum(1./N.^2))
pi_s=0;
for N=1:k
    pi_s=pi_s+(1./N.^2)
end
pi_s=sqrt(6*pi_s)
pi