clear all
Fs = 4000;
Ts = 1/Fs;
t = [0:Ts:0.3];
F_B = 493.88;
B = sin(2*pi*F_B*t);
sound(B,Fs);