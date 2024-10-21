%NEWTON finds the real zeros of the function y.
%       NEWTON finds real zeros by an interactive Newton procedure.

%       Written by Adrian Biran, 1992. See Section 7.5.
c=0;
tol = 0.00001;
disp('Enter the equation to be solved, y(x), and the derivative')
disp('of y with respect to x as strings variables, for example:')
disp('y    = ''x - sin(x) - c''')
disp('dydx = ''1 - cos(x)''')
disp('When the program returns the prompt k enter the appropriate')
disp('escape command to exit keyboard mode and continue the program.')
%keyboard
disp('Enter now the range within which you want to plot the equation.')
disp('Then, after viewing the plot press any key to continue')
xmin = input('x min = ')
xmax = input('x max = ')
xx = xmin: (xmax-xmin)/100: xmax;
z = zeros(1, 100);
for k = 1:101
        x     = xx(k);
        yy    = eval(y);
        z(k)  = yy;
end
plot(xx, z)
grid
title('Plot of the equation to be solved')
xlabel('x')
ylabel('y(x)')
pause
real_zeros = [ ];       % initialize array of real zeros
itermenu
answer = input('Enter your choice ')
while answer ~= 3
       if answer == 1
              xmin = input('x min = ')
              xmax = input('x max = ')
              xstep = (xmax - xmin)/100;
              xx = xmin: xstep: xmax;
              z = zeros(1, 100);
              for k = 1: 101
                     x = xx(k);
                     yy = eval(y);
                     z(k) = yy;
              end
              plot(xx, z)
              grid
              xlabel('x')
              ylabel('y')
              pause
              itermenu
              answer = input('Enter your choice ')
       elseif answer == 2
              disp('Enter initial guess')
              [ x, yg ] = ginput(1)
              for l = 1:100
                     x0 = x;
                     x  = x0 - eval(y)/eval(dydx)
                     if abs(x - x0) < tol
                             break
                     end
              end
              if (l == 100)&(abs(x - x0) >= tol)
                     disp('Procedure did not converge')
              else
                     real_zeros = [ real_zeros x ];
              end
              itermenu
              answer = input('Enter new choice ')
      else
              if answer ~= 3
                     disp('Incorrect answer, please repeat')
                     itermenu
                     answer = input('Enter new choice')
              end
       end
end
