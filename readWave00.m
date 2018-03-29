
%[y, fs]=audioread('yesterday.wav');
[y, fs, nbits]=wavread('yesterday.wav');
sound(y,fs);

%fprintf('length=%g\tfs=%g\tsample_depth=%g\n', length(y), fs);
fprintf('length=%g\tfs=%g\tsample_depth=%g\n', length(y), fs, nbits);

time=(1:length(y))/fs;

left_channel=y(:, 1)*(2^nbits/2);
%right_channel=y(:, 2);

%subplot(2, 1, 1);
fprintf('time_start=%g\ttime_end=%g\n', 1/fs, length(y)/fs);
%plot(time, y);axis([min(time), max(time), -inf, inf]);
plot(time, left_channel);axis([min(time), max(time), -inf, inf]);
%{subplot(2, 1, 2);
plot(time, right_channel);axis([min(time), max(time), -inf, inf]);
%
