function [B] = translate_17510056(A,h)
[m,n]=size(A);
B=A;
for i=1:m
    B(i,:)=A(i,:)+h;
end
end

