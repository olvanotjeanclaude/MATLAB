function [sumResult, diffResult] = mathOperation(a, b)
    % math_operations: Bu fonksiyon, iki sayının toplamını ve farkını hesaplar.
    % a: Birinci sayı
    % b: İkinci sayı
    
    sumResult = add(a, b);       % Toplama işlemini çağır
    diffResult = subtract(a, b);  % Çıkarma işlemini çağır
end

function result = add(x, y)
    % add: İki sayının toplamını döndürür.
    result = x + y;  % Toplama işlemi
end

function result = subtract(x, y)
    % subtract: İki sayının farkını döndürür.
    result = x - y;  % Çıkarma işlemi
end
