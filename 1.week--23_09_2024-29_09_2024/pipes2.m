   %PIPES Intersection of two pipes of equal diameter
   %      Plots Figures 10.6 and 10.7
   clc;
   clear;
   close all;
   m     = 50;
   z     = 1.2*(0: 1: m)/m;
   r     = 1*ones(size(z));
   theta = (0: m)/m*2*pi;
   x1    = r'*cos(theta); y1    = r'*sin(theta);
   z1    = z'*ones(1, m+1);
   x     = (-m: 2: m)/m;
   x2    = x'*ones(1, m+1); y2    = r'*cos(theta);
   z2    = r'*sin(theta);

   h = surf(x1, y1, z1);
   axis equal, axis off
   hold on
   h = surf(x2, y2, z2);
   axis equal, axis off
   t     = [ 'Figure 6.6 - Pipes of equal diameter'];
   Ht = title(t);
   set(Ht, 'FontSize', 14);

   hold off
   pause

   % Improved rendering

   h = surf(x1, y1, z1);
   axis equal, axis off
   hold on
   set(h, 'FaceLighting', 'phong', 'FaceColor', 'interp',...
          'EdgeColor', 'none')
   colormap(spring) 
   camlight headlight
   t     = [ 'Figure 6.6 - Pipes of equal diameter'];
   Ht = title(t);
   set(Ht, 'FontSize', 14);

   h = surf(x2, y2, z2);
   axis equal, axis off
   set(h, 'FaceLighting', 'phong', 'FaceColor', 'interp',...
          'EdgeColor', 'none')

   hold off