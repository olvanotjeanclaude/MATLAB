clc;
clear;
close all;
X=[2:12];
p=[1:6 5:-1:1]./36;
X*p'
bar(X, p,'w')