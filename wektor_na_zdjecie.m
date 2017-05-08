function wektor_na_zdjecie = wektor_na_zdjecie(x,y)
licznik = 0;
zdjecie_rozmiar = size(y);
wektor_na_zdjecie = zeros(zdjecie_rozmiar(1),zdjecie_rozmiar(2),zdjecie_rozmiar(3));
for k = 1:1:zdjecie_rozmiar(3)
    for i = 1:1:zdjecie_rozmiar(1)
        for j = 1:1:zdjecie_rozmiar(2)
            Y=0;
            for l = 1:1:8
                Y = Y + x(licznik+l) * (2^(8-l));   
            end
            licznik = licznik + 8;
            wektor_na_zdjecie(i,j,k)= Y;
        end
    end
end

wektor_na_zdjecie = uint8(wektor_na_zdjecie);
end
