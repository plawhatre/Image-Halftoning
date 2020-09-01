function [J] = halftone_dither(I,t)
[m,n]=size(I);
[tm,tn]=size(t);
J=zeros(m,n);
for i=1:m
    for j=1:n
        a=I(i,j);
        if a>t(mod(i,tm)+1,mod(j,tn)+1)
            J(i,j)=255;
        else 
            J(i,j)=0;
        end
    end
end
end

