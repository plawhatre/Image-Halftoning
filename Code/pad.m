function [J] = pad(I,k)
[m,n]=size(I);
J=size(m+k,n+k);
J(((k+1):(m+k)),((k+1):(n+k)))=I;
end

