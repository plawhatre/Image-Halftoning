clc,clear,close all
%select image
I=sel_img();
df1=SIFT(I);
%select image
J=sel_img();
df2=SIFT(J);
%Feature matching
