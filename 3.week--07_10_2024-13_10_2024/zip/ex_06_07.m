%EXA06_06       EXAMPLE 6.7, Method of node voltages

R  = [ 4 6 8 10 10 ];           % resistances, ohm
V1 = 12;                        % V
V3 = 6;                         % V
A  = 1./R;                      % conductances
% build matrix of conductances
G  = [ A(1) + A(2) + A(4), -A(2)
      -A(2), (A(2) + A(3) + A(5)) ];
% calculate vector of current sources
C  = [ A(1)*V1; A(3)*V3 ];
% calculate node potentials
U  = G\C;
% calculate branch currents
I1    = zeros(5, 1);
I1(1) = A(1)*(V1 - U(1));
I1(2) = A(2)*(U(1) - U(2));
I1(3) = A(3)*(U(2) - V3);
I1(4) = A(4)*U(1);
I1(5) = A(5)*U(2);
I1
disp('Check Kirchhoff''s first law at node 1')
-I1(1) + I1(2) + I1(4)
disp('Check Kirchhoff''s first law at node 2')
-I1(2) + I1(3) + I1(5)
