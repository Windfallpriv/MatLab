% Euler's constant 6a1
euler_constant = 0.577;
target = 14.1
k = target-euler_constant
m= 0
p=1

while m<k
m=log(p);
p=p+1;
end

p-1
%% 6a2
target = 14.1;
m = 0;
k = 1;
while target > m
m = m+ 1/k;
k = k+1;
end
k-1
%%
clear,clc
p=0;
x=linspace(-5,5,10000);
f=@(x) (cos(x)+sin(2*x))./(2.*exp(x)-x.^2);
t=@(x) -(3*(x.^3))/4 + (x.^2)/2  + 1/2;
t(1)-f(1)





