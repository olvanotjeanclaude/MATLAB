data = [5, 3, 9, 1, 6];

% Finding the maximum and minimum values / En büyük ve en küçük değerleri bulma
maxValue = max(data);        % Result: 9 / Sonuç: 9
minValue = min(data);        % Result: 1 / Sonuç: 1

% Length of the data / Veri sayısı
numElements = length(data);  % Result: 5 / Sonuç: 5

% Sum and product of the data / Toplam ve çarpım
totalSum = sum(data);        % Result: 24 / Sonuç: 24
totalProduct = prod(data);    % Result: 90 / Sonuç: 90

% Median and standard deviation / Ortanca ve standart sapma
medValue = median(data);      % Result: 5 / Sonuç: 5
stdValue = std(data);         % Result: 2.8284 / Sonuç: 2.8284

% Mean, geometric mean, and harmonic mean / Ortalama, geometrik ortalama ve harmonik ortalama
avgValue = mean(data);        % Result: 4.8 / Sonuç: 4.8
geoMeanValue = geomean(data); % Result: 4.6416 / Sonuç: 4.6416
harmMeanValue = harmmean(data); % Result: 3.6364 / Sonuç: 3.6364

% Sorting the data in descending order / Verileri azalan sırada sıralama
sortedData = sort(data, 'descend');  % Result: [9, 6, 5, 3, 1] / Sonuç: [9, 6, 5, 3, 1]

disp(sortedData)