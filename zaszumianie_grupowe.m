function zaszumianie_grupowe = zaszumianie_grupowe(x,y,z)
if ~isvector(x)
    error('x musi byæ wektorem')
end


zaszumianie_grupowe = zeros(1,length(x));

for i = 1:1:length(x)
	r = rand;
        if r<zaszumienie
            if (i+z)<length(x)
                for j = 0:1:z
                zaszumianie_grupowe(i+j) = ~x(i+j);
                end
            else
                zaszumianie_grupowe(i) = x(i);
            end 
        end
end
end