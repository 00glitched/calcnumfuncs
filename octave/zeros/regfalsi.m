clear;
f = input("Put @(var) function(var) : ");
a = input("A point: ");
b = input("B point: ");
Emax = input("Tolelance: ");
Imax = input("Max.iter.: ");
if (a!=b && Emax>0 && Imax>0)
	ab=abs(b-a);fa=0;fb=0;c=0;fc=0;
	i=0;
	e=Emax+1;eab=0;
	printf("\n n\t | a\t\t | b\t\t | c\t\t | fa\t\t | fb\t\t | fc\t\t | fafc\t | ei\n");
	while (e>Emax && i<Imax)
		fa=f(a);
		fb=f(b);
		if(i>0)
			ci=c;
		else
			ci=abs(b-a);
		end
		c = (a * fb - b * fa) / (fb - fa);
		fc=f(c);
		e=abs(fc);
		i+=1;
		printf(" %i\t | %f\t | %f\t | %f\t | %f\t | %f\t | %f\t ",i,a,b,c,fa,fb,fc);
		if(sign(fa)*sign(fc)==1)
			a=c;
			printf("|  (+)  ");
		elseif (sign(fa)*sign(fc)==-1)
			b=c;
			printf("|  (-)  ");
		end
		printf("| %f\n",e);
		if(sign(fa)*sign(fc)==0)
			return; # por si es cero
		end
	end
	printf("\n\nX=%f, Eabs=%f\n",c,eab);
else
	printf("\nInput error\n");
end
while (1)
	input=input("\nEnter to exit "); disp(""); exit;
end
