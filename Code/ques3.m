clc,clear,close all
warning off
addpath('input_image')
%Image selection
list = {'Campus','1_user','2_user','3_user'};
[indx] = listdlg('ListString',list,'SelectionMode','single');
if indx==1
    I=im2double(imread('campus.png'));
    nm='campus';
end
if indx==2
    I=im2double(imread('1_user.jpg'));
    nm='1_user';
end
if indx==3
    I=im2double(imread('2_user.jpg'));
    nm='2_user';
end
if indx==4
    I=im2double(imread('3_user.jpg'));
    nm='3_user';
end
%function selection
list = {'Thresholding','Random noise binarization','Ordered Dithering','Error diffusion'};
[index] = listdlg('ListString',list,'SelectionMode','single');
if index==1
    %Thresholding
    g1=halftone_treshold(I,127);
    figure()
    imshow(I)
    truesize
    figure()
    imshow(g1)
    truesize
    %fedility matrix
    [a1,a2,a3,a4,a5,a6]=fedility_17510056(I,g1);
    alpha=[a1,a2,a3,a4,a5,a6];
    msgbox(num2str(alpha))
    %saving files
    cd('output_image')
    pr=strcat('g1_',nm,'.tiff');
    imwrite(g1,pr)
end
if index==2
    %Random noise Binarization
    [f1,g2]=halftone_binarize(I,127);
    figure()
    imshow(f1)
    truesize
    figure()
    imshow(g2)
    truesize
    [a1,a2,a3,a4,a5,a6]=fedility_17510056(I,g2);
    alpha=[a1,a2,a3,a4,a5,a6];
    msgbox(num2str(alpha))
    %saving files
    cd('output_image')
    pr=strcat('g2_',nm,'.tiff');
    imwrite(g2,pr)
    pr=strcat('f2_',nm,'.tiff');
    pr=strcat(pr);
    imwrite(f1,pr)
end
if index==3
    %Ordered dithering
    I=im2double(I);
    imshow(I)
    truesize
    I=255.*I;
    %index matrix
    disp('index matrix')
    i2=[1 2;3 0]
    i4=[4.*i2+1 4.*i2+2;4.*i2+3 4.*i2]
    i8=[4.*i4+1 4.*i4+2;4.*i4+3 4.*i4]
    %threshold matrix
    disp('threshold matrix')
    t2=255.*((i2+0.5)./(2^2))
    t4=255.*((i4+0.5)./(4^2))
    t8=255.*((i8+0.5)./(8^2))
    %ordered dithering
    g3=halftone_dither(I,t2);
    figure()
    imshow(g3)
    truesize
    [a1,a2,a3,a4,a5,a6]=fedility_17510056(I,g3);
    alpha_i1=[a1,a2,a3,a4,a5,a6];
    msgbox(num2str(alpha_i1))
    g4=halftone_dither(I,t4);
    figure()
    imshow(g4)
    truesize
    [a1,a2,a3,a4,a5,a6]=fedility_17510056(I,g4);
    alpha_i2=[a1,a2,a3,a4,a5,a6];
    msgbox(num2str(alpha_i2))
    g5=halftone_dither(I,t8);
    figure()
    imshow(g5)
    truesize
    [a1,a2,a3,a4,a5,a6]=fedility_17510056(I,g5);
    alpha_i3=[a1,a2,a3,a4,a5,a6];
    msgbox(num2str(alpha_i3))
    %saving files
    cd('output_image')
    pr=strcat('g3_',nm,'.tiff');
    imwrite(g3,pr)
    pr=strcat('g4_',nm,'.tiff');
    imwrite(g4,pr)
    pr=strcat('g5_',nm,'.tiff');
    imwrite(g5,pr)
end
if index==4
    %Error diffusion
    I=im2double(I);
    figure()
    imshow(I)
    truesize
    I=255.*I;
    g6=halftone_error_diff(I,127);
    figure()
    imshow(g6)
    truesize
    [a1,a2,a3,a4,a5,a6]=fedility_17510056(I,g6);
    alpha=[a1,a2,a3,a4,a5,a6];
    msgbox(num2str(alpha))
    %saving files
    cd('output_image')
    pr=strcat('g6 _',nm,'.tiff');
    imwrite(g6,pr)
end