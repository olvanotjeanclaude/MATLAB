clc;
clear;
R=[1 2 1 -1;3 4 2 1;-2 3 4 1;1 0 2 3];
E=[1 -1 0 2]';
T=[R E]
[sat,sut]=size(R);
for n=1:sut-1
    for m=(n+1):sat
        T(m,:)=T(m,:)-T(n,:)*T(m,n)/T(n,n);
    end
end
disp(T)
I=zeros(1,sat)';
%I(4)=T(4,5)/T(4,4)
%I(3)=(T(3,5)-T(3,4)*I(4))/T(3,3)
%I(2)=
%I(1)=
for n=sat:-1:1
    tp=T(n,[sut:-1:n+1])*I([sut:-1:n+1]);
    I(n)=(T(n,sut+1)-tp)/T(n,n);
end
disp(I)