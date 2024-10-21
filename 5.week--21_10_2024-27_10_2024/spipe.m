   function lambda = spipe(Re)

%SPIPE  smooth-pipe frictional coefficient.
%       spipe(Re) is the smooth-pipe frictional
%       coefficient for Reynolds numbers 0 < Re <= 10^6.

if Re <= 2320
        lambda = 64/Re;
elseif Re <= 10^5
        lambda = 0.3164/Re^0.25;
else
        if Re < 3*10^6
                x0 = -0.8 + 2*log10(Re);
                x  = -0.8 + 2*log10(Re/x0);
                while (abs(x - x0) > 0.000001);
                        x0 = x;
                        x  = -0.8 + 2*log10(Re/x0);
                end
                lambda = 1/(x*x);
        else
                disp('Reynolds number > 10^6')
                disp('Calculation aborted')
        end
end
