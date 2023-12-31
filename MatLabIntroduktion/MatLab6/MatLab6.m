%Uppgift 1
clear, clc
f=@(x) x.^3-cos(4*x);
x=linspace(-2,2,1000);
plot(x,f(x)), hold on
grid on
yline(0)
text(-1,4,"3st nollställen")
text(-1,3,"Nollställena är ca (-0.9, -0.4, 0.4)")

tol=1e-8;
Df=@(x) 3.*x.^2 +4.*sin(4.*x);
np1 =min_newton(f,Df,-.9,tol);
np2 =min_newton(f,Df,-.4,tol);
np3 =min_newton(f,Df,.4,tol);

plot(np1,0,'-o',np2,0,'-o',np3,0,'-o')
hold off
%% Uppgift 3 a
clear, clc, format long

x=linspace(-5,5,1000);
f=@(x)0.5*(x-2).^2-2*cos(2*x)-1.5;
Df=@(x)4*sin(2*x)+x-2;

plot(x,f(x)),hold on
yline(0)
grid on
axis([-1 5 -5 14])
tol=1e-8;

np1 =min_newton(f,Df,-.5,tol);
np2 =min_newton(f,Df,1,tol);
np3 =min_newton(f,Df,2,tol);
np4 =min_newton(f,Df,4,tol);
plot(np1,0,'-o',np2,0,'-o',np3,0,'-o',np4,0,'-o')
hold off
text (0,5,"Nollpunkterna är " +np1+" "+np2+" "+np3+" "+np4)
%% Uppgift 3 b
clear, clc, format long

x=linspace(-5,5,1000);
f=@(x)x.^3-cos(4*x);
Df=@(x)3*x.^2+4*sin(4*x);

plot(x,f(x)),hold on
yline(0)
grid on
axis([-1.5 1.7 -3 7])
tol=1e-8;

np1 =min_newton(f,Df,-1,tol);
np2 =min_newton(f,Df,-0.5,tol);
np3 =min_newton(f,Df,0.4,tol);
plot(np1,0,'-o',np2,0,'-o',np3,0,'-o'), hold off

text (-1,3,"Nollpunkterna är " +np1+" "+np2+" "+np3)

%% Uppgift 4
clear, clc , format long
x=linspace(-10,10,1000);
f=@(x)((3+sin(2*x))./(1+exp(0.03*(x.^2))))-1.2;
plot(x,f(x),"g"), hold on
grid on
axis([-7 7 -1 1])
yline(0)

x1=fzero(f,-3);
x2=fzero(f,-1.5);
x3=fzero(f,-.5);
x4=fzero(f,1.5);
x5=fzero(f,4.5);
x6=fzero(f,3);
plot(x1,0,'-o',x2,0,'-o',x3,0,'-o',x4,0,'-o',x5,0,'-o',x6,0,'-o'),hold off
fprintf("Nollpunkterna: "+ x1+" "+x2+" "+x3+" "+x4+" "+x5+" "+x6)

