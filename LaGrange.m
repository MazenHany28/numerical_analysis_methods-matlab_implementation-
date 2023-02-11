function p = LaGrange(x,y,z)
n = length(x);
p=0;
l=zeros(1,n);
for i =1:n
   l(i)=1;
   for j = 1:n
      if i~=j
        l(i)=l(i)*((z-x(j))/(x(i)-x(j)));
      end
   end
   p=p+y(i)*l(i);
end
end