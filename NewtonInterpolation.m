function p = NewtonInterpolation(x,y,z)
n=length(x);
a=zeros(n,n);
b=zeros(n,1);
a(:,1)=y;
for i=2:n
   for j=2:i
      a(i,j)=(a(i,j-1)-a(i-1,j-1))/(x(i)-x(i-j+1));
   end
end
for i=1:n
  b(i)=a(i,i);
end
p=b(1);
for i = 2:n
   product=b(i);
   for j=1:i-1
      product=product*(z-x(j)); 
   end
   p=p+product;
end
end