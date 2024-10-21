function        z = cones(alpha)
%CONES  3-D plot of cone.
%CONES(ALPHA)   plot of cone with semi-angle alpha.
%       For alpha = pi/4 produces Figure 10.11, The
%       lower nappe of a cone.

x = -10: 0.5: 10; y = -10: 0.5: 10;
[ X, Y ] = meshgrid(x, y);
Z = -sqrt(X.^2 + Y.^2)/tan(alpha);      % only lower nappe
i = find(Z < Z(1,21));
for n = i'
        Z(n) = Z(1,21);
end
subplot(1, 2, 1)
mesh(X, Y, Z), axis('equal')
t = [ '\alpha = ' num2str(alpha) ' radians' ];
title(t)
subplot(1, 2, 2)
contour3(Z), axis('equal')
