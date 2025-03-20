clear;
pkg load io;
pkg load struct;
#pkg load statistics;
pkg load optim;
f = input(  "f(x), put @(x) f(x) : ");
a = input("A point: ");
b = input("B point: ");
Emax = input("Tolelance: ");
Imax = input("Max.iter.: ");
if (Emax>0 && Imax>0)
	p=0;fa=0;fp=0;
	i=0;e=Emax+1;
	printf(" n\t | x\t | fx\t | xi\t | fxi\t | e\n");
	fa = f(a);
	fb = f(b);
	while (e>Emax && i<Imax)



		#TERMINAR PUEDE TENER ERRORES
				
		p  = b-f(b)*(a-b)/(fa-fb);
		fp = f(p);
		e  = abs(p-a);
		printf(" %i\t | %f\t | %f\t | %f\t | %f\t | %f\n",i,a,fa,b,fb,p,fp,e);
		a = p; i += 1;
	end
end
