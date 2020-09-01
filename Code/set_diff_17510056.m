function [C] = set_diff_17510056(A,B)
[m,n]=size(B);
p_vec=[];
for i=1:m
    [z,pos]=belong_to(A,B(i,:));
    if z==1
        p_vec=[p_vec;pos];
    end
end
A(p_vec,:)=[];
C=A;
end

