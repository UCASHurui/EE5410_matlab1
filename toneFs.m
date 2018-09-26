clear all
Fs = 4000;
Ts = 1/Fs;
t = [0:Ts:0.3];
F_F = 739.99;
F = sin(2*pi*F_F*t);
sound(F,Fs);