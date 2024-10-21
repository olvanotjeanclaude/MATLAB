function [ana_para,faiz]=kredi(P,oran, sure)
tp=P*(1+oran)^sure;
ana_para=P;
faiz=tp-P;