function        y = conic(phi, param)
%CONIC  generates a conic section
%       described in polar form with two arguments
%       phi, the polar angle coordinate, and param = [ p e ],
%       where p is the parameter, and e the eccentricity.
%       Syntax: conic(phi, param)
%       See example 10.4, Orbits of planets and satellites.

p = param(1); e = param(2);
r = p*ones(size(phi))./(1 + e*cos(phi));
polar(phi, r), grid
if e < 1
        t1 = 'Ellipse, ';
elseif e == 1
        t1 = 'Parabola, ';
else
        t1 = 'Hyperbola, ';
end
t2 = 'p = '; t3 = ', e = ';
xlabel([ t1 t2 num2str(p) t3 num2str(e) ]);
