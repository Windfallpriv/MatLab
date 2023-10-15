clear,clc
Hz=50
Ts=1/Hz

rawTable = readtable('ECG_Mans.xlsx');
x = rawTable.Amplitude; %: get the excel column, Header2 (header name)
n = length(x);
y = fft(x);
fshift = (-n/2:n/2-1)*(Hz/n);
yshift = fftshift(y);
plot(fshift,abs(yshift))
xlabel('Frequency (Hz)')
ylabel('Magnitude')