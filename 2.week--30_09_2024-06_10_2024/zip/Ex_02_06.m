clc;
clear;
close all;
%EXE02_06        Solves EXERCISE 2.6, Swimming across a river

   V = [ 0 0.9 ]; S = [ -1.5 0 ]; % velocities, km/h
   T = V + S                      % true velocity, km/h
   true_speed = sqrt(T*T')
   deviation = (180/pi)*atan(1.5/0.9)
   t = 1.1/0.9                    % time to swim across, h
   BC = 1.5*t                     % km
   (180/pi)*atan(BC/1.1)          % check angle
