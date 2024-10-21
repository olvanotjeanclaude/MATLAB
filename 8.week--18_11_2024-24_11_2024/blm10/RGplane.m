%YELLOW Generates the RG plane in the RGB cube. See EXAMPLE 10.9,
%       The colour cube.
close all;
red    = zeros(10,10);          % allocate space
green  = zeros(10,10);          % allocate space
blue   = zeros(10,10);          % allocate space
for k = 1: 10
        intensity  = 1;%(k-1)*0.1;
        red(k, :)  = rand*intensity;
        green(:, k)= rand*intensity;
        blue(:, k) = rand*intensity;
end
RGplanen = cat(3, red, green, blue);    % build 3D array
image(RGplanen)                         % create image
title('RG plane')