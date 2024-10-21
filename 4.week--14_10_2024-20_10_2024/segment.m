 %SEGMENT        angle subtended by a circular segment.
%               SEGMENT(A, r) is the angle subtended by a circular
%               segment having the area A, and the radius r. The
%               area of the segment equals A = r^2(phi - sin(phi))/2
%               See Section 7.4, Iterative solution of equations.

function        phi = segment(A, r)

phi0 = 2*A/r^2;                 % initial guess
phi1 = phi0;
phi  = sin(phi1) + phi0;        % first iteration
while abs(phi - phi1) > 0.00001 % begin loop
        phi1 = phi;
        phi  = sin(phi1) + phi0;
end                             % end loop
