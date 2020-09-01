function [g] = additive_noise(f,a,b)
[mf,nf]=size(f);
n=zeros(mf,nf);
for i=1:mf
    for j=1:nf
        if rand<0.5
            n(i,j)=(b-a)*n(i,j)+a;
        end
    end
end
% n=(b-a).*n+a.*ones(m,n);
g=f+n;
end

