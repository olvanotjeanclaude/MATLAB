nframes = 90;
s=.02;
n=20
x = rand(n,1)-0.5;
y = rand(n,1)-0.5;
h = plot(x,y,'.')
set(h,'MarkerSize',18);
axis([-1 1 -1 1])
axis square
axis('off')
grid off
M = moviein(nframes); 
for k = 1:nframes
x = x + s*randn(n,1);
y = y + s*randn(n,1);
set(h,'XData',x,'YData',y)
M(:,k) = getframe;
end
pause;
movie(M,10)