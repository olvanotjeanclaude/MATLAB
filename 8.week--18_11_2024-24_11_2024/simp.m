function        z = simp(x, y)
%SIMP(X, Y)     Simpson integration of tabular data y(x).
% Z = SIMP(X, Y) integrates Y with respect to X using
% Simpson's first rule. X and Y are column vectors of the
% same length, or X is a column vector and Y a matrix
% with the same number of rows as X. In the latter
% case Z is a row vector containing the integrals of
% each column of Y. If either or both X and Y are
% row vectors, they are converted to column vectors.
%
% Z = SIMP(Y) integrates Y assuming that the X intervals
% are constant. The user must multiply the result by the
% value of the constant X interval.

% Check that x and y are column vectors, or y is a
% matrix with the same number of rows as x.
if nargin < 2, y = x; end
[ n, m ] = size(y);
if n == 1, y = y(:); n = m; end
if nargin < 2, x = 1:n; end
x = x(:);
% [ n, m ] = size(y);
if length(x) ~= n
        error('Input arguments must be of same length')
end
% n = length(x);
if rem(n, 2) == 0
        error('Uneven number of intervals')
end
c = [ 1 4 1 ];
dx = diff(x);
z = 0;
for i = 1: 2: (n-2)
        if abs(dx(i) - dx(i+1)) > 0.00001
                error('Two sequential intervals not equal')
        end
        z = z + c*[ y(i,:); y(i+1,:); y(i+2,:) ]*dx(i);
end
z = z/3;