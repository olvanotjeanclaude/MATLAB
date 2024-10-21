clc;
clear;
close all;

%EXE04_06       Solves Exercise 4.6, Swimming across a river.

V = 0.9*exp(i*pi/2); S = 1.5*exp(i*pi);
T = V + S
true_speed = abs(T)            % speed over bottom, km/h
deviation = (180/pi)*angle(T)