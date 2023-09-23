%% Uppgift 1
clear,clc
s=0.01;
x = (-pi/2)+s:0.01:(pi/2)-s;
plot(x,tan(x)), grid on
% Man behöver minska defintionsmängden på båda sidorna ett litet tal
%för att man lättare ska kunna läsa av grafen

%% Uppgift 2
clear, clc
x=linspace(0,8);
y=x-x.*cos(7*x);
p = plot(x,y), grid on
p.LineStyle ="--"
p.LineWidth = 2
title('f(x)=x-x*cos(7*x)')

%% Uppgift 3
clear, clc
x=linspace(0,14);
plot([0 14],[0 0],'green')
hold on

plot(x,kastbana(x,15)), text(6.4,1.6,'15^o')
plot(x,kastbana(x,30)), text(6.4,3.2,'30^o')
plot(x,kastbana(x,45)), text(6.4,4.6,'45^o')
hold off

title('Kastbana då v0=10m/s och olika theta')
xlabel('x'), ylabel('y')
axis equal, axis([0 14 -2 6])

%Man delar upp uttrycker för y(x) i flera delar för att kunna använda
%functionen i andra samanhang utan att behöva skriva om den

%% Uppgift 4
t=linspace(0,2*pi);
x1=cos(t)+cos(3*t);
y=sin(2*t);
x2=cos(t)+cos(4*t);

subplot(1,2,1)
plot(x1,y)
axis equal
title('Timglas')

subplot(1,2,2)
plot(x2,y)
axis equal
title('Dubbelpilar')

%% Uppgift 5 
clear, clc
t=linspace(0,2*pi);
x=cos(t); y=sin(t);
plot(x,y), fill(x,y,'green')
hold on
kvadrat_x=[-1,0,1,0,-1];
kvadrat_y=[0,1,0,-1,0];
Kvadrat=[kvadrat_x;kvadrat_y];
plot(Kvadrat(1, :),Kvadrat(2, :),'y'), fill(Kvadrat(1, :),Kvadrat(2, :),'y')
hold off
title('Grön cirkel med gul kvadrat')
axis equal
axis([-1.1 1.1 -1.1 1.1])
