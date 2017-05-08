function zaszumianie_pojedyncze = zaszumianie_pojedyncze(x,y)

zaszumianie_pojedyncze = zeros(1,length(x));

for i = 1:1:length(x)
   r = rand;
   if r<y
       zaszumianie_pojedyncze(i) = ~x(i);
   else
       zaszumianie_pojedyncze(i) = x(i);
   end 
end

end