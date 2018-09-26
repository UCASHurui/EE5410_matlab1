function xx = dtmfdial(keyName)
%DTMFDIAL   Create a DTMF tone
%usage: xx=dtmfdial(keyName)
% keyName = character which is one of the valid key names
% xx = signal vector that corresponds to the DTMF
dtmf.keys = ['1','2','3';
   '4','5','6';
   '7','8','9';
   '*','0','#'];
ff_cols = [1209,1336,1477];
ff_rows = [697;770;852;941];
dtmf.colTones = ones(4,1)*ff_cols;
dtmf.rowTones = ff_rows*ones(1,3);
[col,row] = find(keyName == dtmf.keys);
frequency1 = dtmf.rowTones(col,row);
frequency2 = dtmf.colTones(col,row);
Fs = 8000;
Ts = 1/Fs;
time_duration = 0.2;
t = [0:Ts:time_duration];
xx = cos(2*pi*frequency1*t) + cos(2*pi*frequency2*t);
soundsc(xx, Fs);
end

