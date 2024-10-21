%RECTIFY.M simulates the rectifying action of a diode.
%       See Example 7.5, The operating point of a diode circuit.

tol = 1.0E-6;
I0   = 1.0E-8;                  % mA
R    = 2000;                    % ohm
f    = 50;                      % Hz
T    = 1/f;                     % s
t    = 0: T/100: 2*T;           % time array, s
V    = 10*sin(2*pi*f*t);        % ac source
F    = 'I0*(exp(40*x0) - 1) - 1000*(Vs - x0)/R';
F1   = '40*I0*exp(40*x0) + 1000/R';
v    = zeros(1, 201);
x0   = 0.0;     % first initial guess
for k = 1: 201
        Vs = V(k);
        for l = 1:100
                x = x0 - eval(F)/eval(F1);
                if abs(x - x0) <= tol
                        break
                end
                x0 = x;
        v(k) = x;
        end
end
i = 1000*(V - v)/R;
plot(t, V, t, i)
xlabel('t, s')
text(t( 40), V( 40), 'Source voltage, V')
text(t( 55), i( 55), 'Current, mA')
