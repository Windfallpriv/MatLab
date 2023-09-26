%Uppgift 1
clear, clc
f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;
x=linspace(-2,7);
plot(x,f(x))
axis([-2 7 -1 1]), grid on

% Uppgift 2
a=-1;
b=0;

if (f(a)*f(b))<0
    if (f(a)*f((f(a)+f(b))/2))<0
        b=(f(a)+f(b))/2;
    else
        a=(f(a)+f(b))/2;
    end
end

%% Uppgift 4
clear, clc
f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;
x=linspace(-2,7,1000);

x23=min_bisect(f,[2,3],0.00001);
x10=min_bisect(f,[-1,0],0.00001);


plot(x,f(x)), grid on
hold on
xline(x23)
hold on
xline(x10)
yline(0,'green')
format short
text(3,-.15,"Nollställen: " + x10 + " och " + x23)
%% Uppgift 5
clear, clc
x=linspace(0,15);

y=@(x) kastbana2(x);
plot(x,y(x))
yline(0)
axis([-2 14 -2 6])

nollp=min_bisect(y,[5,15],0.01)
xline(nollp)
text(9,-1,"Nollpunkten är " + nollp)
