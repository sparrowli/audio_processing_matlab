fileName='welcome.wav';
[y, fs, nbits]=wavread(fileName, [5001 6000]);

time = (1:length(y))/fs;
y = y * (2^nbits/2);
fprintf('音讯文件"%s"的信息:\n', fileName);
fprintf('音讯长度 = %g 秒\n', length(y)/fs);
fprintf('采样频率 = %g Hz\n', fs);
fprintf('采样精度 = %g 位元/采样点\n', nbits);
%figure;
plot(time, y);axis([min(time), max(time), -inf, inf]);
