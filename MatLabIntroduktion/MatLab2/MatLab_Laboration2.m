%% Uppgift 1
clear
clc
A=[1 4 7 10; 2 5 8 11; 3 6 9 12]; 
b=[1; 3; 5];
c=[0 2 4 6 8];
fprintf ("A(2,3) =")
disp(A(2,3))
fprintf ("b(2) =")
disp(b(2))
fprintf ("c(3) =")
disp(c(3))
A(2,3)=15;
fprintf ("Nya värdet av A(2,3) =")
disp(A(2,3))

%% Uppgift 2
clear
clc
A1=[1 5 9; 2 0 5; 3 7 11];
b1=[29;26;39];
E1=[A1 b1];

A2=[1 1 3 4; -2 2 2 0; 1 1 2 3; 1 -1 -2 -1];
b2=[2; -4; 1; 1];
E2=[A2 b2];

R1=rref(E1)
R2=rref(E2)
disp("Då det andra ekvationssytemet har oöndligt många lösningar " + ...
    "sätter vi att x4 = t  =>") 
 disp( " x1 = 1-t , x2 = -2 , x3 = 1-t , x4 = t")

 %% Uppgift 3
 clear 
 clc
 A=[11 4 3 7; 2 6 8 5; 9 12 1 10];
 b=[3; 1; 5];
 c=[4 2 8 0 6];
 disp("Man ser mängden kolonner och rader");
 size(b);
 size(c);
[k,r]=max(A)
disp("kolonn 2 rad 3")
[k2,r2]=min(A)
disp("kolonn 3 rad 3")
%% Upgift 4
clear 
clc
t=1:5;
s=t.^2;
Kvadrerade_summan_s=sum(s);
fprintf("Svaret är:");
disp(Kvadrerade_summan_s)

