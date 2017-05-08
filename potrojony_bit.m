function potrojony_bit = potrojony_bit(x)

potrojony_bit = zeros(1,length(x)*3);
for i = 1:1:(length(x)*3)
   potrojony_bit(i)=x(fix((i-1)/3)+1);
end
end