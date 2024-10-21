%(A/r^2)=(phi-sin(phi))/2
phi=[0:pi/180:2*pi];
x=phi*180/pi;
y=(phi-sin(phi))/2;
plot(x,y)
grid
xlabel('Angle at center, \phi, derece')
ylabel('A/r^2');
figure
r=2; A=0.0472;
phi=[0:pi/360:pi/4];
x=phi*180/pi;
y1=(phi-sin(phi))/2;
y2=A/r^2*ones(size(y1));
plot(x,y1,x,y2)
grid
xlabel('Angle at center, \phi, derece')
gtext('(\phi-sin(\phi))/2')
gtext('A/r^2')
[phi0 y0]=ginput(1)