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
	printf(" n\t | x\t\t | fx\t\t | xi\t\t | fxi\t\t | xi+1\t\t | fxi+1\t | e\n");
	while (e>Emax && i<Imax)

		#TERMINAR PUEDE TENER ERRORES
		
		fa = f(a);
		fb = f(b);		
		p  = b-f(b)*(a-b)/(fa-fb);
		fp = f(p);
		e  = max(abs(p-a),abs(p-b)); i += 1;
		printf(" %i\t | %f\t | %f\t | %f\t | %f\t | %f\t | %f\t | %f\n",i,a,fa,b,fb,p,fp,e);
		a = b; b = p;
	end
end
