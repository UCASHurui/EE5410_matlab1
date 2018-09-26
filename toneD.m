clear all
Fs = 4000;
Ts = 1/Fs;
t = [0:Ts:0.3];
F_D = 587.33;
D = sin(2*pi*F_D*t);
sound(D,Fs);