function        y = uramp(t, t0)

%URAMP(T, t0)   unit ramp at t0
%               See Section 7.2, Conditional branching.

 [ m, n ] = size(t);
 y        = zeros(m, n);         % initialize y array of points
for k = 1: length(t)
        if t(k) >= t0
                y(k) = t(k) - t0;
        end
end
