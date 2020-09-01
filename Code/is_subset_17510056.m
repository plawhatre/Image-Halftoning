function [z] = is_subset_17510056(A,B)
[m,n]=size(A);
count=0;
for i=1:m
    z=belong_to(B,A(i,:));
    count=count+z;
end
if count==m
    z=1;
else
    z=0;
end
end

