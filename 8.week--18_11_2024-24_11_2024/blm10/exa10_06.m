%EXAM106 Generates Figure 10.15, Power radiation pattern of antenna.

theta  = 0: pi/90: 2*pi;
theta1 = pi/2 - theta;
D      = 1.5*sin(theta).^2;
polar(theta1, D)
title('Power radiation pattern of antenna')