function y = ustep(t, t0)

%USTEP(T, t0)   unit step at t0
%               See Section 7.2, Conditional branching.

[ m, n ] = size(t);
y        = zeros(m, n);         % initialize y array of points
for k = 1: length(t)
        if t(k) < t0
                y(k) = 0;
        else
                y(k) = 1;
        end
end
