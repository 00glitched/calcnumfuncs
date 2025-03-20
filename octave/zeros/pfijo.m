clear;
f = input(  "f(x), put @(x) f(x) : ");
g = input("x=g(t), put @(x) g(x) : ");
a = input("A point: ");
Emax = input("Tolelance: ");
Imax = input("Max.iter.: ");
if (Emax>0 && Imax>0)
	p=0;fa=0;fp=0;
	i=0;e=Emax+1;
	printf(" n\t | x\t | fx\t | xi\t | fxi\t | e\n");
	while (e>Emax && i<Imax)
		fa = f(a);
		p  = g(a);
		fp = f(p);
		e  = abs(p-a);
		printf(" %i\t | %f\t | %f\t | %f\t | %f\t | %f\n",i,a,fa,p,fp,e);
		a = p; i += 1;
	end
end
