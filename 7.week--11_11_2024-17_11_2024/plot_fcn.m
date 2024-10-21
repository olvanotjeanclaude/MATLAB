%f(t) 1/(1-e^(mt)) fonksiyonunun grafiğini -4<t<4 aralığında m=0.5,1,2 ve 4 
%için tek bir grafik üzerinde ayrı ayrı çizdiriniz.Grafikler üzerinde
%m 'nin değerini gösteriniz.
clc;
clear;
close all;
t=[-4:.1:4];
m=[0.5 1 2 4];
s=['g-*';'r-o';'k-<';'y-d'];
figure;
hold on;
for i=1:length(m)
f_t=1./(1-exp(m(i).*t));
plot(t,f_t,s(i,:))
%text
end
grid
legend('m=0.5','m=1','m=2', 'm=4','Location','SouthWestOutside')