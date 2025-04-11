clear;
pkg load io;
pkg load struct;
#pkg load statistics;
pkg load optim;
f = input(  "f(x), put @(x) f(x) : ");
a = input("A point: ");
m = input("Multi.: ");
Emax = input("Tolelance: ");
Imax = input("Max.iter.: ");
if (Emax>0 && Imax>0)
	p=0;fa=0;fp=0;
	i=0;e=Emax+1;
	printf(" n\t | x\t | fx\t | xi\t | fxi\t | e\n");
	while (e>Emax && i<Imax)
		fa = f(a);
		p  = a-m*f(a)/deriv(f,a);
		fp = f(p);
		e  = abs(p-a);
		i += 1;
		printf(" %i\t | %f\t | %f\t | %f\t | %f\t | %f\n",i,a,fa,p,fp,e);
		a = p;
	end
end
