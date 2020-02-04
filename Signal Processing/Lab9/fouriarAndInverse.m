clc;
clear all;
close all;
syms t;
x1=exp(-t^2);
disp(x1);
X1=fourier(x1);
disp('The fourier transform of the input equation is');
disp(X1);
x11=ifourier(X1);
disp('The Inverse fourier transform is');
disp(x11);