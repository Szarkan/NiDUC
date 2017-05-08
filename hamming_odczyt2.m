function hamming_odczyt = hamming_odczyt(x)

pomocnicza = 1;
hamming_odczyt2 = zeros(1,int16(length(x)/7*4));

for i=1:7:length(x)



    b1=0;
    b2=0;
    b3=0;
    
    if x(i) == 1 
        b1 = b1 + 0;
        b2 = b2 + 0;
        b3 = b3 + 1;
    end
    
    if x(i+1) == 1 
        b1 = b1 + 0;
        b2 = b2 + 1;
        b3 = b3 + 0;
    end
        
    if x(i+2) == 1 
        b1 = b1 + 0;
        b2 = b2 + 1;
        b3 = b3 + 1;
    end
    
    if x(i+3) == 1 
        b1 = b1 + 1;
        b2 = b2 + 0;
        b3 = b3 + 0;
    end
    
    if x(i+4) == 1 
        b1 = b1 + 1;
        b2 = b2 + 0;
        b3 = b3 + 1;
    end
    
    if x(i+5) == 1 
        b1 = b1 + 1;
        b2 = b2 + 1;
        b3 = b3 + 0;
    end
    
    if x(i+6) == 1 
        b1 = b1 + 1;
        b2 = b2 + 1;
        b3 = b3 + 1;
    end
    
    b1 = mod(b1,2);
    b2 = mod(b2,2);
    b3 = mod(b3,2);
    
    Y = b3 + (b2*2) + (b1*4);
    if ((Y>0)&&(Y<9))  
        x(i+Y-1) = ~ x(i+Y-1) ;
    end
    
    hamming_odczyt2(pomocnicza) = x(i+2);
    hamming_odczyt2(pomocnicza+1) = x(i+4);
    hamming_odczyt2(pomocnicza+2) = x(i+5);
    hamming_odczyt2(pomocnicza+3) = x(i+6);
    pomocnicza = pomocnicza + 4;

    
end
end