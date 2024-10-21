%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%bu program matlab oturumu açıldığında otomatik yüklendi%
%                      Y A R D I M
%MELİH İNAL
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
zaman=fix(clock);
isim=[];
for i=1:length(zaman)
    isim=[isim int2str(zaman(i)) '_'];
end
isim(end)=[];
isim=[isim '.txt']
warning off;
mkdir('gunluk');
cd gunluk
eval(['diary ' isim])
disp('MATLAB OTURUMU BAŞARILI BİR ŞEKİLDE AÇILDI...')
pause(2);
clc;
clear;