%FIG10_08      Draws Figure 10.8, Example 10.1, The involute of a circle.
%              This M-file is explained in Example 10.2

clf     % clear the screen for new figure
axis('equal'), axis([-1.5 1.5 -1.5 1.5])
% axes('position', [ 0 0 1.0 1.0 ])
axis off, hold on
phi1 = 0: pi/30: 2*pi;
a = 1;
rho = a*ones(size(phi1));
alpha1 = pi/3;
phi2 = tan(alpha1) - alpha1;
phi3 = phi2 + alpha1;
polar(phi1, rho, '-')                      % base circle
polar([ phi3 phi3 ], [ 0 a ])              % radius OA
polar([ phi3 phi2 ], [ a a/cos(alpha1) ])  % tangent AB
text(-0.2, 1.07, 'A')
text(1.4, 1.35, 'B')
polar([ 0 0 ], [ 0 a ])                    % radius vector OD
text(-0.09, -0.09, 'O')
text(-0.05, 0.5, 'a')
text(1.05, 0.0, 'D')
alpha2 = pi/5;
phi4 = tan(alpha2) - alpha2;
phi5 = phi4 + alpha2;
polar([ phi5 phi4 ], [ a a/cos(alpha2) ])   % tangent EF
text(0.75, 0.75, 'E')
text(1.3, 0.2, 'F')
hold off
