function [R] =dilation_1_17510056(A,B)
%Reflection of B
Bh=reflection_17510056(B,'index_wise');
R=[];
%moving structuring element over the Matrix
[m1,n1]=size(A);
[m2,n2]=size(Bh);
for i=1:m2
    b=Bh(i,:);
    for j=1:m1
        a=A(j,:);
        c=a-b;
        R=[R;c];
    end
end
end

