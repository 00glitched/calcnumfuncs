clear;
f = input("Put @(var) function(var) : ");
a = input("A point: ");
b = input("B point: ");
Emax = input("Tolelance: ");
Imax = input("Max.iter.: ");
if (a!=b && Emax>0 && Imax>0)
	ab=abs(b-a);ab=abs(b-a);fa=0;fb=0;c=0;fc=0;eab=0;
	i=0;
	e=Emax+1;
	printf("\n \bfn\t | a\t\t | b\t\t | c\t\t | fa\t\t | fb\t\t | fc\t\t | fafc\t | ei\t\t | eab \n");
	while (e>Emax && i<Imax)
		fa=f(a);
		fb=f(b);
		c=(a+b)/2;
		fc=f(c);
		i+=1;
		e=2^(-i);
		eab=e*ab;
		printf(" %i\t | %f\t | %f\t | %f\t | %f\t | %f\t | %f\t ",i,a,b,c,fa,fb,fc);
		if(sign(fa)*sign(fc)==1)
			a=c;
			printf("|  (+)  ");
		elseif (sign(fa)*sign(fc)==-1)
			b=c;
			printf("|  (-)  ");
		end
		printf("| %f\t | %f\n",e,eab);
		if(sign(fa)*sign(fc)==0)
			return; # por si es cero
		end
	end
	printf("\nX=%f, Eabs=%f\n",c,eab);
else
	printf("\nInput error\n");
end
while (1)
	input=input("\nEnter to exit "); disp(""); exit;
end
