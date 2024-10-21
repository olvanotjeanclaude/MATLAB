% Define the function
f = @(x) x.^2 - 4;

% Define the objective function to minimize (absolute value of f(x))
g = @(x) abs(f(x));

% Use fminbnd to minimize |f(x)| over the interval [1, 3]
x_min = fminbnd(g, 1, 3);

% Display the result
fprintf('The root is approximately: %.6f\n', x_min);
fprintf('f(x_min) is: %.6f\n', f(x_min));

x = -10:0.5:10;

plot(f(x),x);

grid on;
