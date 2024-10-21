function z = gcd2(x, y, tol)
%GCD2  greatest common divisor by a recursive procedure.
%      GCD2(x, y, tol) recursive greatest common divisor of reals
%      x and y evaluated with the precision tol. If the third
%      argument is not specified, tol = 1.0E-4. See section 7.6.

if nargin == 2
        tol = 1.0E-4;
end
if tol <= 0
        error('Argument tol must be strictly positive')
end
if (sum(size(x)) ~=2)&(sum(size(y))) ~= 2
      error('Arguments are not scalars, calculation aborted')
end
if x < 0
        x = -x;
end
if y < 0
        y = -y;
end
if y <= tol
        z = x;
else
        z = gcd2(y, rem(x, y));
end