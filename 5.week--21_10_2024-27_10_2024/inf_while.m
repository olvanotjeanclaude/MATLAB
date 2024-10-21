clc;
clear;
x=1;
while (x~=0) %(x>=0)or (x>=tol) tol=5e-17
    x=x-0.2
    pause(1)
end