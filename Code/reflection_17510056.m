function [B] = reflection_17510056(A,str)
%Value wise reflection
if nargin==1
    B=A(end:-1:1);
end
%index wise reflection
if nargin==2
    B=-A;
end
end

