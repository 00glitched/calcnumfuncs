clear;
pkg load io;
pkg load struct;
#pkg load statistics;
pkg load optim;
f = input(  "f(x), put @(x) f(x) : ");
a = input("A point: ");
Emax = input("Tolelance: ");
Imax = input("Max.iter.: ");
if (Emax>0 && Imax>0)
	p=0;fa=0;fp=0;
	i=0;e=Emax+1;
	printf(" n\t | x\t\t | fx\t\t | xi\t\t | fxi\t\t | e\n");
	while (e>Emax && i<Imax)
		fa  = f(a); #func, point, delta, calcquant, deriv ord
		dfa = deriv (f, a, Emax/1000, 2, 1);
		ddfa= deriv (f, a, Emax/1000, 2, 2);
		p  = a - 2*(fa/dfa)/(2-(fa*ddfa/(ddfa^2)));
		fp = f(p);
		e  = abs(p-a);
		i += 1;
		printf(" %i\t | %f\t | %f\t | %f\t | %f\t | %f\n",i,a,fa,p,fp,e);
		a = p;
	end
end
