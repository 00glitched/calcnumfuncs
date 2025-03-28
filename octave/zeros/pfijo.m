clear;
pkg load io;
pkg load struct;
pkg load statistics;
pkg load optim;
f = input(  "f(x), put @(x) f(x) : ");
g = input("x=g(t), put @(x) g(x) : ");
a = input("A point: ");
Emax = input("Tolelance: ");
Imax = input("Max.iter.: ");
if (Emax>0 && Imax>0)
	#if(abs(deriv(g,a))>1)
	#	printf("Diverge, |g'(a)|>1")
	#else
		p=0;fa=0;fp=0;
		i=0;e=Emax+1;
		printf(" n\t | x\t\t | fx\t\t | xi\t\t | fxi\t\t | e\n");
		while (e>Emax && i<Imax)
			p  = g(a);
			fp = f(p);fa=f(a);
			e  = sqrt((p-a)^2);
			printf(" %i\t | %f\t | %f\t | %f\t | %f\t | %f\n",i,a,fa,p,fp,e);
			a = p; i += 1;
		end
	#end
end
