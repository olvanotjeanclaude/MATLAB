function [ q, r ] = divide(x, y)
%DIVIDE(X, Y) integer division of x by y.
%       The operation is carried on by subtracting
%       y from x, until x < y.
%       [ q, r ] = divide(x, y) yields the quotient q and
%       the remainder r.

q = 0;
c = 1;
k = 1;
if (x == 0)|(x < y)
        q = 0;
        r = x;
end
if y == 0
        error('Division by zero')
end
if x < 0
        x = -x;
        c = -c;
        k = -k;
end
if y < 0
        y = -y;
        c = -c;
end
while x >= y
        x = x -y;
        q = q + 1;
end
q = c*q;
r = k*x;