% Adım 1: c vektörünü oluşturma
c = -2:2;

% Adım 2: d karmaşık sayı vektörünü oluşturma
d = c + 1i * c;

% Adım 3: d'nin transpozunu alma
e = d.';

% Sonuçları görüntüleme
disp('c vektörü:');
disp(c);
disp('d karmaşık sayı vektörü:');
disp(d);
disp('d vektörünün transpozu e:');
disp(e);
