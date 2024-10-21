clc;
clear;
deg=input('Açı değerini girin  (0-360):');
if (deg>360) deg=deg-360;
else if (deg<0) deg=360-deg;
    end
end
bolge=round(deg/90);
switch bolge
    case 0
        disp('1. Bölge');
    case 2
        disp('2. Bölge');
    case 3
        disp('3. Bölge');
    case 4
        disp('4. Bölge');
    otherwise
        disp ('Out of range...');
end
disp(['Sin of ' int2str(deg) ' degree= ' num2str(sind(deg))])

