clc,clear,close all
addpath('input_image')
I=255.*im2double(imread('campus.png'));
J=halftone_error_diff(I,127);
imshow(J)
truesize