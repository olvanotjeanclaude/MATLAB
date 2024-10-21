%EXA06_14       EXAMPLE 6.14, Roots of closed-loop transfer functions
clc;clear;
K  = 6.5;
G1 = [ 1 0 ]; G2 = [ 1 2 ]; G3 = [ 1 4 5 ];
% multiply factors of G denominator
open = conv(G1, conv(G2, G3))
% calculate now characteristics of closed circuit
%closed = open;
%l      = length(closed);
%closed(l) = K
closed=K*open
closed(end)=1 %payda 1+KG(s)H(s) H(s)=1 old.
roots(closed)
%rlocus(sys...)
