filterLength = [50,500,50,500,50,500];
noisePower = [0,0,10,10,100,100];
key = ['1','2','3','4','5','6','7','8','9','*','0','#'];
n = 1;
i=filterLength(n);
j=noisePower(n);
for k = key
    record = 0;
    for n = 1:20
        deKey = dtmfdetect(k,i,j);
        if deKey == k
            record = record +1;
        end
    end
    disp(k);
    disp(record);
    disp('-------------------------------');
end

