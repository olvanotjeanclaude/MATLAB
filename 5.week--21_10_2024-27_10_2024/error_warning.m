sayi=input('* 0 ile 1 arasinda bir sayi giriniz * : ');
if sayi > 1
%error('Dikkat! Sayi 0 ile 1 arasinda olmalidir.');
warning on
warning('Dikkat! Sayi 0 ile 1 arasinda olmalidir.');
disp(sayi);
else
disp(' ')
disp('Rasyonel sayi karsiligi= ')
disp(rats(sayi))
end