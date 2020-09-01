function [z,pos] = belong_to(A,a)
[m,n]=size(A);
z=0;
pos=[];
for i=1:m
    if A(i,:)==a
        z=1;
        if nargout==2
            pos=i;
        end
        break
    end
end
end

