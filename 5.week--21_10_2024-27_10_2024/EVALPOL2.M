   function  p = evalpol2(c, x)

%EVALPOL2 Polynomial evaluation by Horner's scheme.
%       EVALPOL1(C, X) evaluates at X the polynomial whose
%       coefficients are contained in the array C.
%       The elements f C are ordered according to
%       the descending powers of X.
%       See Example 7.3, The complexity of polynomial evaluation.

l = length(c); p = c(1);
for k = 2:l
        p = p*x + c(k);
end
