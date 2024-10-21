%EXAM10_07      Generates Figure 10.17, Illumination pattern of a lamp
%               that emits uniformly in all directions.

alpha = 0: pi/60: 2*pi;
theta = alpha - pi/2;
e     = cos(alpha).^3;
axis square
polar(theta, e)
title('Lamp emitting uniformly in all directions, illumination pattern') 
