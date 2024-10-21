clc;
clear;
theta=input('Theta in Radian:');
n=input('Enter # term:');
cos_t=1;
im=-1;
for i=2:2:n
    cos_t=cos_t+(im*theta^i/prod([1:i]));
    im=im*(-1);
end
sin_t=0;
im=1;
for i=1:2:n
    sin_t=(im*sin_t)+(theta^i/prod([1:i]));
    im=im*(-1);
end
T=exp(j*theta)
T_est=cos_t+j*sin_t
pause;
se=(abs(T)-abs(T_est))^2
sonuc=[int2str(n) '. terim için karesel hata= ' num2str(se)]