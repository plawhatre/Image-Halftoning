function [g] = halftone_treshold(f,T)
[m,n]=size(f);
g=zeros(m,n);
for i=1:m
    for j=1:n
        x=f(i,j);
        if x<(127/255)
            g(i,j)=0;
        else
            g(i,j)=255;
        end
    end
end
end

