
   %PIPES1       Intersection of two pipes of equal diameter
   %        Plots Figure 10.2.

   r1 = 5;                      % radius of first cylinder                                                           % radius of horizontal cylinder
   r2 = 5;                      % radius of second cylinder                                                           % radius of vertical cylinder
   % front view
   % begin horizontal cylinder
   P0 = [   0; 0 ];  P1 = [  -5; 5 ];
   P2 = [ -13; 5 ];  P3 = [ -13; -5 ];
   P4 = [  13; -5 ]; P5 = [  13; 5 ];
   P6 = [   5; 5 ];
   patch([ P0(1), P6(1), P5(1), P4(1), P3(1), P2(1), P1(1) ],...
         [ P0(2), P6(2), P5(2), P4(2), P3(2), P2(2), P1(2) ], 'y')
   axis([ -15 30 -27 18 ]), axis equal, axis off
   hold on

   P7 = [  5; 15 ]; P8 = [ -5; 15 ]; % begin vertical cylinder
   patch([ P0(1), P6(1), P7(1), P8(1), P1(1) ],...
         [ P0(2), P6(2), P7(2), P8(2), P1(2) ], 'g')
   pline([ P0 P1 P2 P3 P4 P5 P6 P0 ], 2.5, 'k', '-')
   pline([ P6 P7 P8 P1 ], 2.5, 'k', '-')

   % side view
   t  = 0: pi/90: 2*pi;   % horizontal cylinder
   xc = 23 + r1*cos(t); zc = r1*sin(t);
   patch(xc, zc, 'y')
   % begin vertical cylinder
   zl = 0;                                                                                 % lowest point
   P11 = [ 28; zl ]; P12 = [ 28; 15 ];
   P13 = [ 18; 15 ]; P14 = [ 18; zl ];
   % define intersection arc
   ti  = 0: pi/90: pi;
   xi2 = 23 + r1*cos(ti); zi2 = r1*sin(ti);
   %vertical cylinder
   patch( [ xi2 P11(1) P12(1) P13(1) P14(1) ],...
          [ zi2 P11(2) P12(2) P13(2) P14(2) ], 'g')
   pline([ xc; zc ], 2.5, 'k', '-')
   pline([ P11 P12 P13 P14 ], 2, 'k', '-')
   ha = plot([ -14 29 ], [ 0 0 ], 'k-.');        % horizontal axis
   set(ha, 'LineWIdth', 1.5)
   ha = plot([ 0 0 ], [ -6 16 ], 'k-.');         % vertical axis in front view set
   set(ha, 'LineWidth', 1.5)
   ha = plot([ 23 23 ], [ -6 16 ], 'k-.');       % vertical axis in side view 
   set(ha, 'LineWIdth', 1.5)
   ht = title('Intersection of perpendicular, equal-diameter cylinders');
   set(ht, 'FontSize', 14)
   t1 = 'horizontal cylinder:             y^2 + z^2 = r^2';
   ht = text(-12, -10, t1);
   set(ht, 'FontSize', 14)
   t2 = 'vertical cylinder:                 x^2 + y^2 = r^2';
   ht = text(-12, -15, t2);
   set(ht, 'FontSize', 14)
   ht = text(-12, -20, 'projection of intersection: z^2 - x^2 = 0');
   set(ht, 'FontSize', 14)
