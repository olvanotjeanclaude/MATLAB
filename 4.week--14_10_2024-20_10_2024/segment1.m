    % SEGMENT1 angle of circular segment, plot of iterations.
   %       SEGMENT1(A, r) finds the angle of a circular segment
   %       with the area A, and the radius r, and generates a plot
   %       showing the evolution of the iterations. The area of the
   %       segment equals A = r^2(phi - sin(phi))/2.
   %       See Section 7.4.

      function phi = segment1(A,r)

   
   phi0 = 2*A/r^2;                              
   phi1 = phi0;
   phi  = sin(phi1) + phi0;                 % first guess
   iter = [ phi0 phi1 phi ];
   angle = [ 0 phi0 phi0 ];
   while abs(phi - phi1) > 0.00001
           phi1 = phi;
           phi  = sin(phi1) + phi0;
           iter = [ iter phi1 phi ];
           angle = [ angle phi1 phi1 ];
   end
   theta = 0: pi/180: pi/5;
   z = sin(theta) + phi0;
   lx = [ pi/6 pi/6 ];
   ly = [ 0 0.6 ];
   plot(theta, z, angle, iter, [0 pi/5], [0 pi/5], lx, ly)
   grid
   xlabel('\phi')
   ylabel('y')
   text(-0.1, phi0, '2A/r^2')
   text(pi/6 + 0.01, 0.05, '\pi/6')
   text(0.63, 0.65, '1')
   text(0.05, 0.45, 'curve 1, y = \phi')
   lz = length(z);
   text(theta(lz), z(lz)-0.04, '2')
   text(0.05, 0.55, 'curve 2, y = sin(\phi) + 2A/r^2')
