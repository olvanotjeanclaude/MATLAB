r = rand() % random number in [0,1)
x=10;
y=10; d=1;
if (r < 0.25)
% move north
y = y + d;
elseif (r < 0.5)
% move east
x = x + d;
elseif (r < 0.75)
% move south
y = y - d;
else
% move west
x = x - d;
end
disp(x)
disp(y)