clear all
Fs = 4000;
Ts = 1/Fs;
t = [0:Ts:0.3];
F_C = 554.37;
C = sin(2*pi*F_C*t);
sound(C,Fs);