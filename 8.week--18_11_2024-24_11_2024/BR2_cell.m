% BR2 matrix of station names}
%       Used in conjunction with BR1.M and BR3.M.
%       See book, Section 12.2, Graph of a railway network.
clc;
clear all;
%pause;
BR2 = [
' Fort William '
' Glasgow      '
' Carlisle     '
' Inverness    '
' Perth        '
' Edinburgh    '
' Aberdeen     '
' Dundee       '
' Newcastle    '
' Darlington   '
' York         '
' Preston      '];
BR2_celli=[];
[k,j]=size(BR2);
bosluk=[];
for i=1:k
    bosluk=[find(BR2(i,:)==' ')]
    z=2;
    for f=1:bosluk(3)
    if (bosluk(z+f)==' ') continue;
    else  
    BR2_celli=[BR2_celli;{BR2(i,bosluk(1)+1:bosluk(2)-1)}]
%    while (BR2(i,end)==' ')
 %       BR2(i,end)='*';
 %   end    
  %  BR2_celli=[BR2_celli;{BR2(i,bosluk(1)+1:end)}]
    break;
end
end
end