clear all
Fs = 4000;
Ts = 1/Fs;
t = [0:Ts:0.3];
F_E = 659.26;
E = sin(2*pi*F_E*t);
sound(E,Fs);