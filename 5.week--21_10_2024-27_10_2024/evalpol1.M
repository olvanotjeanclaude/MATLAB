%EVALPOL1 polynomial evaluation, term by term scheme.
%       EVALPOL1(C, X) evaluates at X the polynomial whose
%       coefficients are contained in the array C.
%       The elements of C are ordered according to
%       the descending powers of X.
%       See Example 7.3, The complexity of polynomial evaluation.

function p = EVALPOL1(c, x)

l = length(c); p = c(l); pow = 1;
for k = l-1: -1: 1
        pow = pow*x;
        p   = p + c(k)*pow;
end
