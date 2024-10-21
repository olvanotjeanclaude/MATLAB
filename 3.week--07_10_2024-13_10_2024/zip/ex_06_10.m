%EXA06_10       EXAMPLE 6.10, Finding the depth of a well

t    = 2.5;             % s
g    = 9.81;            % m/s^2
c    = 343;             % m/s
p(1) = 1;
p(2) = -2*(t*c + c^2/g);
p(3) = (c*t)^2;
sol  = roots(p)         % solution by MATLAB function
% try to recover polynomial coefficients
poly(sol)
% inaccurate display, change foramt
format long
poly(sol)
% display in same format all coefficients
p
% check results by reverse calculation
format short
depth  = sol(2);
t1     = sqrt(2*depth/g)        % falling time, s
t2     = depth/c                % time of sound travel, s
t      = t1 + t2                % total time, s

% check results by reverse calculation
format short
depth_1  = sol(1);
sqrt(2*depth_1/g)        % falling time, s
depth_1/c                % time of sound travel, s
t1 + t2                % total time, s
