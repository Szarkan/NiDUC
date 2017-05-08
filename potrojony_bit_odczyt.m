function potrojony_bit_odczyt = potrojony_bit_odczyt(x)
potrojony_bit_odczyt = zeros(1,length(x)/3);
for i = 1:1:length(x)/3
   pomocnicza = x(3*i) + x(3*i-1) + x(3*i-2);
   if pomocnicza>1
       potrojony_bit_odczyt(i)=1;
   else
       potrojony_bit_odczyt(i)=0;
   end
end
end
