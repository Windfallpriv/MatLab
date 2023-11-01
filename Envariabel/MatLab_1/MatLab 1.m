clear,clc
n=100;
I=[0,3];
format short

x=linspace(I(1),I(2),n+1);
 f=@(x)x.*cos(x);
E=min_integral(f,I,n,4) 


%rektangelmetoden vänster (k=1),
% rektangelmetoden höger (k=2),
% mittpunktsmetoden (k=3)      
% trapetsmetoden (k=4).


