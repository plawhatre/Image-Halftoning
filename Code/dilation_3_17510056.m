function [R]=dilation_3_17510056(A,B)
R=[];
%moving structuring element over the Matrix
[m1,n1]=size(A);
[m2,n2]=size(B);
for i=1:m2
    b=B(i,:);
    for j=1:m1
        a=A(j,:);
        C=translate_17510056(a,b);
        R=union_17510056(R,C);
    end
end
end

