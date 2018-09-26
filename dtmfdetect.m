function keyDetected = dtmfdetect(keyName, filterLength, noisePower)
% keyName is one of the valid key names
% filterLength is the length of the BPF
% noisePower is the noise power
% This funtion will finally display the detected key name
tone = dtmfdial(keyName);
noise = sqrt(noisePower)*randn(1,length(tone));
tone = tone + noise;
freqs = [697,770,852,941,1209,1336,1477];
h_697 = bpf(697,filterLength);
h_770 = bpf(770,filterLength);
h_852 = bpf(852,filterLength);
h_941 = bpf(941,filterLength);
h_1209 = bpf(1209,filterLength);
h_1336 = bpf(1336,filterLength);
h_1477 = bpf(1477,filterLength);
y1 = conv(tone,h_697);
y2 = conv(tone,h_770);
y3 = conv(tone,h_852);
y4 = conv(tone,h_941);
y5 = conv(tone,h_1209);
y6 = conv(tone,h_1336);
y7 = conv(tone,h_1477);
energy = [];
energy(1) = sum(y1.*y1);
energy(2) = sum(y2.*y2);
energy(3) = sum(y3.*y3);
energy(4) = sum(y4.*y4);
energy(5) = sum(y5.*y5);
energy(6) = sum(y6.*y6);
energy(7) = sum(y7.*y7);
[sorted,index] = sort(energy);
index = flip(index);
freq1 = freqs(index(1));
freq2 = freqs(index(2));
dtmf.keys = ['1','2','3';
   '4','5','6';
   '7','8','9';
   '*','0','#'];
ff_cols = [1209,1336,1477];
ff_rows = [697;770;852;941];

col = find(ff_cols==freq1);
if col
    row = find(ff_rows==freq2);
else
    col = find(ff_cols == freq2);
    row = find(ff_rows == freq1);
end
keyDetected = dtmf.keys(row,col);
disp('The detected Key is:');
disp(keyDetected);
end

