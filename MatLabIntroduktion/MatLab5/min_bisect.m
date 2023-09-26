function m=min_bisect(f,I,tol)
% Uppgift 3
	   
    a=I(1);
    b=I(2);
    c=1;
    msg=sprintf('??? Felaktig användning ==> min_bisect \n Funktionen måste växla tecken på intervallet.');
	     
    if (f(a).*f(b))>0
        disp(msg)
        m=[];
        return
    end
    while abs(f(c)) > tol
      c = (a + b)/2;
        if (f(a).*f(c)<0)
        b=c;
       else
        a=c;
       end
    end
m=c;
   
