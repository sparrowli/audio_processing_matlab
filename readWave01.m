
[y, fs]=audioread('welcome.wav');
sound(y,fs);

fprintf('length=%g\tfs=%g\n', length(y), fs);

time=(1:length(y))/fs;

fprintf('time_start=%g\ttime_end=%g\n', 1/fs, length(y)/fs);
%plot(time, y);axis([min(time), max(time), -inf, inf]);
plot(time, y);axis([min(time), 1.5, -inf, inf]);
