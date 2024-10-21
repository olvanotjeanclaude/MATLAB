swiss = [
7.0     44       44
10.5    45       59
13.0    47       70
17.5    50       72
34.0    50       93
40.5    38       100
44.5    30       110
48.0    30       110
56.0    34       110
61.0    36       117
68.5    34       118
76.5    41       116
80.5    45       118
91.0    46       118
96.0    43       121
101.0   37       124
104.0   33       121
106.5   28       121
111.5   32       121
118.0   65       122
123.5   55       116
136.5   54       83
142.0   52       81
146.0   50       82
150.0   66       86
157.0   66       85
158.0   68       68 ];
swiss=40.*swiss/18;%real scale 18 mm -> 40 km
long=swiss(:,1);
lat_down=swiss(:,2);
lat_up=swiss(:,3);
plot(long,lat_down)
axis('off')
axis('equal')
hold on
plot(long,lat_up)
scale=40*[10 28]/18
plot(scale,[10 10])
text(15,10,'0'^)
text(15,10,'0')
text(70,10,'40 km')
yuksek=lat_up-lat_down
alan=tarpz(long,yuksek)
alan=trapz(long,yuksek)
tr_alan=41288;
(tr_alan-alan)*100/tr_alan %percent error %2.73