function [C] = intersection_17510056(A,B)
[m,n]=size(A);
C=[];
for i=1:m
    z=belong_to(B,A(i,:));
    if z==1
        C=[C;A(i,:)];
    end
end 
end

