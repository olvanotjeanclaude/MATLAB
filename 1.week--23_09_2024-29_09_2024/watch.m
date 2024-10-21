clc
clf
clear
close all
%watch
hold on
polar(3, 2*pi), axis 'off', axis 'equal'
for n=0:11
    theta=n*2*pi/12+pi/2;
    polar([theta theta], [1.9 2.4])
    [x y]=pol2cart(theta,3)
    text(x, y, int2str(12-n))
end
t= fix(clock);
hour=rem(t(4),12);
minute=t(5);
second=t(6);
angle1=(12-hour)*2*pi/12+pi/2-(minute/60)*2*pi/12;
angle2=(60-minute)*2*pi/60+pi/2;
angle3=(60-second)*2*pi/60+pi/2;
polar([angle1 angle1], [0 1.7]) %saat
polar([angle2 angle2], [0 2.4]) %dakika
polar([angle3 angle3], [0 2.8], 'r') %saniye
hold off

