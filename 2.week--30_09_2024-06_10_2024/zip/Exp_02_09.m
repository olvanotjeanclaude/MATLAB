%EXA02_09       Solves Example 2.9, Ship stability under wind

delta = 402.9;          % ship weight, KN
l     = 2.12;           % sail-area centroid above half-draft, m
KG    = 2.161;          % vertical cnetre of gravity, m
F     = 35.460;         % sail area, m^2
p     = 1;              % wind pressure at 70 knots, kN/m^2
phi   = [ 0; 5; 10; 15; 20; 25; 30; 35; 40; 50; 60; 70; 75 ];
                        % heel angles, degree
w     = [ 0.000; 0.262; 0.519; 0.767; 0.989; 1.182; 1.344; ...
          1.479; 1.592; 1.754; 1.838; 1.858; 1.847 ];
                        % cross-curves of stability, m
heel  = pi*phi/180;     % heel angles, radian
GZ    = w - KG*sin(heel);       % righting arm, m
kw    = p*F*l*(0.25 + 0.75*cos(heel).^3)/delta;
                        % wind arm, m
h     = plot(phi, GZ, phi, kw, ':'), grid
title('Fishing vessel, static stability, 70 knot wind')
xlabel('Heel angle, degrees'), ylabel('Lever arms, m')
legend(h, 'Righting arm, GZ', 'Wind arm')
