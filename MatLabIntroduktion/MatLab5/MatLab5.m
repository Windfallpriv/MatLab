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
a
b
%% Uppgift 4
clear, clc
f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;
x=linspace(-2,7);
x1=min_bisect(f,[2,3],1.1)
