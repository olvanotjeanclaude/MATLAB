clc;
clear;
%OSPRING  Animation of oscillating spring in Section 10.5, Animation.
%       To play the movie try, for example,
%                       movie(M, 10);

p = 0: pi/60: 8*pi;
d = 2; A = 0.2; T = 5;
omega = 2*pi/T;
% plot reference frame
x = d*cos(p)/2; y = d*sin(p)/2;
z = (1 + A*cos(omega*1))*p;
plot3(x, y, z)
% generation of six frames follows.
% axis([-1 1 -1 1 0 10.0*pi]);
M = moviein(6);
for t = 1: 6    % record the movie
        x = d*cos(p)/2; y = d*sin(p)/2;
        z = (1 + A*cos(omega*(t-1)))*p;
        plot3(x, y, z)
        %axis([ -1 1 -1 1 0 10.0*pi]);
        axis('off');
        M(:, t) = getframe;
end
disp('Bir tusa bas lutfen...')
pause;
movie(M,10)