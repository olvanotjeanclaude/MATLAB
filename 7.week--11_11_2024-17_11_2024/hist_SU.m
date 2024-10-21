clc;
clear;
ultim;
[n,x]=hist(SU)
bar(x,n,'w')
xlabel('SU kgf/mm^2');
ylabel('# specimens');
title('SU Hist...');
grid;
for i=1:length(n)
    text(x(i),n(i)-.3,int2str(n(i)))
end
    