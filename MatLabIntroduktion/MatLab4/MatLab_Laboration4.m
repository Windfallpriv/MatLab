%% Uppgift 1
clear,clc
kvadrat_x =[0,0,2,2,0];%Behövs 4a element för att gå hela varvet runt
kvadrat_y =[0,1,1,0,0];
Kvadrat=[kvadrat_x;kvadrat_y]; %Första och andra raden av Matrixen
Omkrets_kvadrat = polylen(Kvadrat(1,:),Kvadrat(2,:));
fprintf("Omkretsen av kvadraten är") %För att det ska hamna på samma rad
disp(Omkrets_kvadrat);

triangel_x=[0,0,1,0];
triangel_y=[0,1,0,0]; %Rätvinklig triangel Omkrets 1+1+rot(2)
Triangel=[triangel_x;triangel_y];
Omkrets_triangel = polylen(Triangel(1,:),Triangel(2,:));
fprintf("Omkretsen av triangeln är") %För att det ska hamna på samma rad
disp(Omkrets_triangel)

%% Uppgift 2
%a Beräkna pi
clear, clc
pi_delat_pa4=pi/4; %Pi delat med 4 
termer=0;
paj=0;
paj_4=0; %pi/4 förhoppningsvis
format long
while abs(paj-pi)>0.00000688
    paj_4=paj_4+(((-1)^termer)/(2*termer+1));
    termer =termer+1; %För att veta antalet termer
    paj=paj_4*4;
end
disp(paj)
disp(pi)
%% Uppgift 2 A
clc, clear
%a
termer=0;
paj=0;
paj_4=0; %pi/4 förhoppningsvis
format long
while fix(paj*100000)-fix(pi*100000)~=0
    paj_4=paj_4+(((-1)^termer)/(2*termer+1));
    paj=paj_4*4; %pi/4 -> pi
    termer =termer+1; %För att veta antalet termer (och öka)
end

%TEXT 
fprintf("Mitt beräknade pi :")
disp(paj/100000)
fprintf("pi :")
disp(pi)
fprintf("Antal termer :")
disp(termer)

%% Uppgift 2 B
clear, clc
paj_4=0;
for i=0:1000
paj_4=paj_4+(((-1)^i)/(2*i+1));
end
fprintf("pi/4 med 1000 termer :")
disp(paj_4)

%% Uppgift 3

clear, clc
subplot(2,1,1)
[x,y]=ginput;
x=[x; x(1)]; 
y=[y; y(1)];
plot(x,y,'-o')
axis([0 1 0 1])

subplot(2,1,2)
fill(x,y,'b')
axis([0 1 0 1])









