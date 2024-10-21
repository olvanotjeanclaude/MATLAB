%LOGSPIR        Plots the logarithmic spiral
%               See Section 10.3, Figure 10.2

m   = 0.1;
phi = 0: pi/60: 4*pi;
r   = exp(m*phi);
polar(phi, r) 
xlabel('Logarithmic spiral')
