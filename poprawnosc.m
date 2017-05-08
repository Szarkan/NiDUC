function poprawnosc = poprawnosc(x,y)
pomocnicza = 0;

for i=1:1:length(x)
if x(i)==y(i)
    pomocnicza = pomocnicza + 1;
end
end

poprawnosc = pomocnicza / length(x);

end