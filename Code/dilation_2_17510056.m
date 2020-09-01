function [R] =dilation_2_17510056(A,B)
R=[];
%moving structuring element over the Matrix
[m1,n1]=size(A);
[m2,n2]=size(B);
for i=1:m2
    b=B(i,:);
    for j=1:m1
        a=A(j,:);
        c=a+b;
        R=[R;c];
    end
end
end

