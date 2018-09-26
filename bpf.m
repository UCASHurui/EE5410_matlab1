function h = bpf(freqCenter, filterLength)
i = [1:filterLength];
h=(1/sqrt(filterLength))*cos(2*pi*(freqCenter/8000)*i);
plot(h,'-or');
energy = sum(h.*h);
disp(energy);
end

