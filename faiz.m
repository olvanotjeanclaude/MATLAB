function [ana_para, faiz] = kredi(P, oran, sure)
    % kredi: Bu fonksiyon, ana para ve faiz hesaplar.
    % P: Ana para
    % oran: Faiz oranı
    % sure: Süre (yıl)

    faiz = P * oran * sure; % Faizi hesapla
    disp(faiz);
    ana_para = P + faiz;    % Ana parayı ve faizi topla
    disp(ana_para);
end
