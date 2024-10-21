clc;
clear;
close all;
%EXAM02_08      solves Example 2.8, Opening a door closed by a
%               pneumatic cylinder

a   = 0.8;              % m, door width
b   = 0.25;             % m, piston arm
A   = pi*0.04^2;        % m^2, piston sectinal area
p0  = 0.1*10^5;         % N/m^2
l0  = 0.50;             % m, open cylinder length
chi = 1.4;              % adiabatic exponent
% Plot now curves of the opening and restoring moments
alpha = 0: pi/90: pi/6; % opening angle, rad
c     = b*tan(alpha);   % piston stroke, m
p     = p0*(l0*ones(size(alpha))./(l0 - c)).^chi;       % pressure, N/m^2
P     = 25;             % N, hand force
left  = P*a*cos(alpha).^2;      % opening moment, Nm
right = b*A*p;                  % restoring moment, Nm
angle = 180*alpha/pi;   % opening angle, degree
h = plot(angle, left, angle, right, ':'), grid
xlabel('angle, degree'), ylabel('Moments, Nm')
legend(h, 'Opening moment', 'Restoring moment')