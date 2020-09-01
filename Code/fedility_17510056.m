function [alpha1,alpha2,alpha3,alpha4,alpha5,alpha6] = fedility_17510056(f,g)
gamma=2.2;
[m,n]=size(f);
alpha1=0;
alpha2=0;
alpha3=0;
alpha4=0;
alpha5=0;
alpha6=0;
for i=1:m
    for j=1:n
        a=f(i,j);
        b=g(i,j);
        a1=((a/255)^gamma)*255;
        b1=((b/255)^gamma)*255;
        a2=((a/255)^(1/gamma))*255;
        b2=((b/255)^(1/gamma))*255;
        d1=a-b;
        d2=abs(d1);
        d3=abs(a1-b1);
        d4=abs(a2-b2);
        alpha1=alpha1+d1;
        alpha2=alpha2+d2;
        alpha3=alpha3+d3;
        alpha4=alpha4+d4;
    end
end
alpha1=alpha1/(m*n);
alpha2=alpha2/(m*n);
alpha3=alpha3/(m*n);
alpha4=alpha4/(m*n);
%gaussin filtering
h=gauss_filter(7,1);
[ix,iy]=size(f);
f2=img_conv(f,h,ix,iy,7);
g2=img_conv(g,h,ix,iy,7);
for i=1:m
    for j=1:n
        a=f2(i,j);
        b=g2(i,j);
        a1=((a/255)^gamma)*255;
        b1=((b/255)^gamma)*255;
        a2=((a/255)^(1/gamma))*255;
        b2=((b/255)^(1/gamma))*255;
        d3=abs(a1-b1);
        d4=abs(a2-b2);
        alpha5=alpha5+d1;
        alpha6=alpha4+d2;
    end
end
alpha5=alpha5/(m*n);
alpha6=alpha6/(m*n);
end

