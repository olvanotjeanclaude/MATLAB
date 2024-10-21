clc;
clear all;
close all;
R=[0 1 1];
G=[0 1 0];
B=[1 1 0];
flag_FR=cat(3,R,G,B);
image(flag_FR)
axis('equal')
axis('off')
figure;
R=[0 1 0]; 
G=[1 1 1];
B=[0 1 0];
flag_NGR=cat(3,R,G,B);
image(flag_NGR)
axis('equal')
axis('off')