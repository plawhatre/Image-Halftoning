function [Ac] = complement_17510056(A,U)
if nargin==1
    U=A;
end
[m,n]=size(A);
c=0;
for i=1:m
    z=belong_to(U,A(i,:));
    c=c+z;
end
if c~=m
    msgbox('Universal set is not properly defined')
    Ac=NaN;
else
    Ac=set_diff_17510056(U,A);
end
end

