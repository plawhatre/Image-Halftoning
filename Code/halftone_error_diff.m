function [J] = halftone_error_diff(I,T)
I=pad(I,1);
[m,n]=size(I);
J=zeros(m,n);
E=zeros(m,n);
for i=2:(m-1)
    for j=2:(n-1)
        f=I(i,j);
        if f>T
            J(i,j)=255;
        else
            J(i,j)=0;
        end
        E(i,j)=I(i,j)-J(i,j);
        I(i,j+1)=I(i,j+1)+E(i,j)*(7/16);
        I(i+1,j-1)=I(i+1,j-1)+E(i,j)*(3/16);
        I(i+1,j)=I(i+1,j)+E(i,j)*(5/16);
        I(i+1,j+1)=I(i+1,j+1)+E(i,j)*(1/16);
    end
end
% J=J(2:(end-1),2:(end-1));
end

