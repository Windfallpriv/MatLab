f=@(x,y) sin(x-y).*cos(3*x+1+y);
x=linspace(-1,3,30); y=linspace(0,4,30);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z)
grid on, box on
xlabel("x"), ylabel("y"), zlabel("z = f(x,y)")
%%
f=@(x,y)exp(1+0.5*(x-3).*cos(4*y));
x=linspace(-1,3,40); y=linspace(0,4,40);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
contourf(X,Y,Z,30)
%%
subplot(1,2,1)
f=@(x,y)7.*sin(x).*sin(y/2)+(x./4)+(y./2);
x=linspace(0,4,40); y=linspace(0,6,40);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
axis equal
contourf(X,Y,Z,20)

subplot(1,2,2)
f=@(x,y)7.*sin(x).*sin(y/2)+(x./4)+(y./2);
x=linspace(0,4,40); y=linspace(0,6,40);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z)
grid on, box on
xlabel("x"), ylabel("y"), zlabel("z = f(x,y)")