% Create a vector x with 10 linearly spaced points from -1 to 1
x = linspace(-1, 1, 10);

% Create a vector y as the sum of sin(x) and cos(x)
y = sin(x) + cos(x);

% Create a vector z by dividing y by x (avoid division by zero)
z = y ./ x;

% Display the results
disp('Vector x:');
disp(x);
disp('Vector y:');
disp(y);
disp('Vector z (handling division by zero):');
disp(z);
