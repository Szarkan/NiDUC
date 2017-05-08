function hamming2 = hamming2(x)
pomocnicza = 1;
hamming2 = zeros(1,ceil(length(x)/4)*7);

for i=1:4:length(x)
   
    hamming2(pomocnicza+2) = x(i);
    hamming2(pomocnicza+4) = x(i+1);
    hamming2(pomocnicza+5) = x(i+2);
    hamming2(pomocnicza+6) = x(i+3);

    b1=0;
    b2=0;
    b3=0;
    
    if hamming2(pomocnicza+2) == 1 
        b1 = b1 + 0;
        b2 = b2 + 1;
        b3 = b3 + 1;
    end
    
    if hamming2(pomocnicza+4) == 1 
        b1 = b1 + 1;
        b2 = b2 + 0;
        b3 = b3 + 1;
    end
    
    if hamming2(pomocnicza+5) == 1 
        b1 = b1 + 1;
        b2 = b2 + 1;
        b3 = b3 + 0;
    end
    
    if hamming2(pomocnicza+6) == 1 
        b1 = b1 + 1;
        b2 = b2 + 1;
        b3 = b3 + 1;
    end
    
    hamming2(pomocnicza) = mod(b3,2);
    hamming2(pomocnicza+1) = mod(b2,2);
    hamming2(pomocnicza+3) = mod(b1,2);
    pomocnicza = pomocnicza + 7;
end
end