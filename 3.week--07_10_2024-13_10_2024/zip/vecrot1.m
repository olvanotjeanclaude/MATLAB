%VECROT1 Animation program which shows a rotating vector            % -  1
%        defined as complex number                                  % -  2
%        This is an improved version of the program described
%        in Section 4.10
clc;
clear;
f      = 50;            % frequency, Hz
omega  = 2*pi*f;        % angular frequency, rad/s
tmax   = 1/f;           % time for a complete rotation, s
time   = 0: tmax/36: tmax;
motion = zeros(size(time));
%clf;
close all;
hold on
for k = 1: length(time)
        t      = time(k);
        z      = exp(i*omega*t);   % complex number description
        x      = real(z);          % cartesian projection
        y      = imag(z);          % cartesian projection
        motion(k) = y;
        plot([ 0, x ], [ 0, y ])
        axis('square')
        axis([ -1 1 -1 1 ])
        axis off;
        pause(0.1)
end
hold off
%pause
%plot(time, motion)