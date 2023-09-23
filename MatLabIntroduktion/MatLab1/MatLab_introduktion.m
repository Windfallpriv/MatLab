clear
clc

%% %Uppgift 1
clear
clc

r=4;
A=pi*r^2

%% %Uppgift 2
clear
clc
x=linspace(0,4*pi);
f=sin(x)+0.3*sin(5*x);
plot(x,f)

%% %Uppgift 3
clear
clc
s=0;
for i=1:5
    s=s+i.^2;
end
disp("Sum is")
disp(s)
%% %Uppgift 4
clear
clc
x=linspace(-1.5,1.5);
y=min_fun(x);
plot(x,y)
grid on

m=fzero(@min_fun,1);
p=fzero(@min_fun,-1);
disp("Nollpunkterna är")
disp(m)
disp(p)

%% %Uppgift 5
%5a) variabel=linspace(startvärde,slutvärde,antal)
% 100 punkter om man ej anger ett tal

%5b Färdig

