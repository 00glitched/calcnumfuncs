x=[1,3,4,7]
y=[-2,1,2,-3]
p=3;

mat=zeros(p,p);
for j=1:length(y)
  for i=1:p
    mat(j,i)=x(j)^(i-1);
  end
end
mat
MAT=transpose(mat)*mat
Y  =transpose(mat)*transpose(y)
C  =MAT\Y

