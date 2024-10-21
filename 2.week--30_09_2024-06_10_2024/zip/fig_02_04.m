%FIG02_04       Produces figure 2.4, A segment of circle

plot([ -1.1 1.1 ], [ 0 0 ])     % x-axis
axis('square'), axis([ -1.2 1.2 -1.2 1.2 ]), axis('off')
hold on
plot([ 0 0 ], [ -1.1 1.1 ])     % y-axis
r  = 1;                         % radius of circle
t  = 0: pi/90: 2*pi;
x  = r*cos(t);
y  = r*sin(t);
plot(x, y, 'k-')                % circle
x1 = [ 0 r*cos(pi/6) ];         % right-hand radius
y1 = [ 0 r*sin(pi/6) ];
x2 = [ 0 r*cos(5*pi/6) ];       % left-hand radius
y2 = [ 0 r*sin(5*pi/6) ];
plot(x1, y1, 'k-', x2, y2, 'k-')
x3 = [ r*cos(5*pi/6) r*cos(pi/6) ]; % chord
y3 = [ r*sin(5*pi/6) r*sin(pi/6) ];
plot(x3, y3, 'k-')
t4 = 5*pi/6: -pi/90: pi/6;
x4 = r*cos(t4);                 % segment arc
y4 = r*sin(t4);
X  = [ x3 x4 ];
Y  = [ y3 y4 ];
fill(X, Y, 'y')
r1 = 0.2;
x4 = r1*cos(t4);                % small arc for dimensioning
y4 = r1*sin(t4);
plot(x4, y4)
text(-0.1, 0.25, '\phi')
text(-0.1, -0.1, 'O')
text(1.15*cos(5*pi/6), 1.05*sin(5*pi/6), 'A')
text(1.15*cos(pi/6), 1.05*sin(pi/6), 'B')
text(-0.1, 1.1, 'C')