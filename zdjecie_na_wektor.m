function zdjecie_na_wektor = zdjecie_na_wektor(x)
licznik = 0;
zdjecie_rozmiar = size(x);
zdjecie_na_wektor = zeros(1,zdjecie_rozmiar(2)*8);
for k = 1:1:zdjecie_rozmiar(3)
    for i = 1:1:zdjecie_rozmiar(1)
        for j = 1:1:zdjecie_rozmiar(2)
            X = dec2bin(x(i,j,k),8);
            for l = 1:1:8
                zdjecie_na_wektor(licznik+1)=X(l)-48;
                licznik = licznik + 1;
            end
        end
    end
end
end