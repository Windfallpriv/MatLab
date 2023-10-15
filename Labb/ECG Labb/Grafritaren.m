clear, clc
Hz =50
rawTable = readtable('ECG_Mans.xlsx');
x = rawTable.Tid; %: get the excel column, Header1 (header name)
y = rawTable.Amplitude; %: get the excel column, Header2 (header name)
figure;
plot(x,y); 

