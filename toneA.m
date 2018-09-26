clear all
Fs = 4000;
Ts = 1/Fs;
t = [0:Ts:0.4];
F_A = 440;
A = sin(2*pi*F_A*t);
%sound(A,Fs);
