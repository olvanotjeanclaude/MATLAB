function        z = conecut1(alpha, beta)
%CONECUT1 3-D plot of a conic section that is an ellipse.
%       Syntax: conecut1(alpha, beta)
%       alpha is the semi-angle of the cone; beta, the
%       angle of the cutting plane
%       For alpha = pi/4, beta = pi/6, produces
%       Figure 10.13, The ellipse as a conic section.

b = 1; x = -10: 0.5: 10; y = -10: 0.5: 10;
[ X, Y ] = meshgrid(x, y);
z = -sqrt(X.^2 + Y.^2)/tan(alpha);      % only lower nappe
i = find(z < z(1, 21));
for n = i'
        z(n) = z(1, 21);
end
a  = X(1, 1); b = z(1, 1); c = b - a*tan(beta);
z1 = tan(beta)*X + c;
for j = 1: 41
        for k = 1: 41
                if z(j, k) > z1(j, k)
                        z(j, k) = z1(j, k);
                else
                        z(j, k) = z(j, k);
                end
        end
end
subplot(1, 2, 1), mesh(X, Y, z), axis('off');
axis('equal')
t1 = [ '\alpha = ' num2str(alpha) '; ' ];
t2 = [ '\beta = ' num2str(beta) ' radians' ];
title([ t1 t2 ])
subplot(1, 2, 2), contourf(z);
axis('square'), axis('off')
