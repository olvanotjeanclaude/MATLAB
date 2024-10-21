size(f); % This command returns the dimensions of the vector f as 1xn or nx1. The first value indicates the number of rows, and the second value indicates the number of columns.


% MATLAB Script to perform various operations on the vector "fist"

% 1. Create the vector "fist"
fist = [4 8 12 16 20 24 28 32 36 40];

% 2. Find the average value of the vector "fist"
average_value = mean(fist);
disp('Average Value:');
disp(average_value);

% 3. Find the standard deviation of the vector "fist"
std_deviation = std(fist);
disp('Standard Deviation:');
disp(std_deviation);

% 4. Find the sum of the square roots of the elements in "fist"
sum_of_sqrt = sum(sqrt(fist));
disp('Sum of Square Roots:');
disp(sum_of_sqrt);

% 5. Create a new vector by dividing each element of "fist" by 5
divided_by_5 = fist / 5; % Element-wise division
disp('Divided by 5:');
disp(divided_by_5);

% 6. Create a new vector by dividing the constant 4 by each element of "fist"
divided_by_4 = 4 ./ fist; % Element-wise division
disp('4 divided by each element:');
disp(divided_by_4);
