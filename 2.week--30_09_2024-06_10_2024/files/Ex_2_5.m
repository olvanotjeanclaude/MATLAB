%FIG02_09.M     Produces Figure 2.9, A truncated Fourier series
t     = -2: 0.05: 2;
omega = 2*pi;
%x(t)=(4*A/pi)*(coswt-1/3coswt+1/5cos5wt-1/7cos7wt+...1/ncosnwt)
x1    = +cos(omega*t);
x2    = -cos(3*omega*t)/3;
x3    = +cos(5*omega*t)/5;
x     = 4*(x1 + x2 +x3)/pi;
plot(t, x), grid
title('Three-term approximation of the square wave')
xlabel('t')
%ODEV: n.terimden Fourier Serisi açılımı
%n=input('')...