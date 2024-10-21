%FIG04_15       Generates Figure 4.15, Frequency response of the car model
clc;
clear;
close all;

% data of EXAMPLE 4.1, A simple model of car vibration
m = 1200;       % mass of fully loaded car, kg
k = 70000;      % spring constant of tires and suspension, N/m
c = 5000;       % viscous damping coefficient, Ns/m
o = 5.7;        % angular frequency, rad/s

zeta = c/(2*sqrt(k*m));
r    = 0: 0.05: 3;
s    = 2*zeta*r*i;
Y    = (1 + s)./(1 - r.^2 + s);
subplot(2, 1, 1), plot(r, abs(Y))
grid
title('Frequency response')
ylabel('Amplification |A/B|')
subplot(2, 1, 2), plot(r, 180*angle(Y)/pi)
grid
xlabel('Frequency ratio \omega/\omega_n')
ylabel('Phase angle, deg')
