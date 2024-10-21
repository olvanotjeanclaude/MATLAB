% Define the function
f = @(x) x.^2;

% Define the limits of integration
a = 0; % Lower limit
b = 1; % Upper limit

% Compute the integral value
integral_val = quad(f, a, b);
fprintf('Integral of x^2 from 0 to 1: %.6f\n', integral_val);

% Create a figure for plotting
figure;

% Define x values for plotting the function
x = linspace(-1.5, 1.5, 100); % Range for x

% Plot the function
plot(x, f(x), 'b', 'LineWidth', 2);
hold on; % Keep the plot

% Mark the surface of the integral
x_fill = linspace(a, b, 100); % x values for the fill area
y_fill = f(x_fill); % Corresponding y values

% Fill the area under the curve
fill([x_fill, b, a], [y_fill, 0, 0], 'r', 'FaceAlpha', 0.5, 'EdgeColor', 'none');

% Add titles and labels
title('Area Under the Curve of f(x) = x^2');
xlabel('x');
ylabel('f(x)');
grid on; % Add grid for better visibility
legend('f(x) = x^2', 'Area under curve (Integral)', 'Location', 'Best');
hold off; % Release the plot
