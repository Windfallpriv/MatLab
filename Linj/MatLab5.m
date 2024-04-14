clear, clc
A=[-2 -1;-4 3]; u0=[1;-1]; T=10;
[V,D] = eig(A)
t=linspace(0,T);
c=V\u0;
U=c(1)*V(:,1)*exp(D(1,1)*t)+c(2)*V(:,2)*exp(D(2,2)*t);
U(1,:),
%%
clear, clc
A=[-2 -1;4 3]
u0=[1;.1];
F=@(t,u)A*u;
[t,U]=ode45(F,[0 10],u0);
u1=linspace(-1,4,25); u2=linspace(-1,3,25);
[U1,U2]=meshgrid(u1,u2);
s=1.5; % s - skalfaktor som f¨orl¨anger pilarna.
quiver(U1,U2,f1(U1,U2),f2(U1,U2),s)