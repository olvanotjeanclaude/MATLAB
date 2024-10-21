%PIPE plots the diagram of smooth-pipe friction coefficients.
%       This M-file calls function SPIPE. See Example 7.4,
%       Flow through smooth pipes.

reynolds = logspace(2.5, 6.3, 100);
coeff = zeros(1,100);
for k = 1: 1: 100
        re = reynolds(k);
        co = spipe(re);
        coeff(k) = co;
end
loglog(reynolds, coeff)
grid
title('Frictional coefficient of smooth pipes')
xlabel('Reynolds number, Re')
ylabel('Friction coefficient, \lambda')