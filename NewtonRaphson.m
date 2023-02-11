function [root , iterations] = NewtonRaphson(f,fd,x0,tol,maxn)
if nargin<5
   maxn=200; 
end
for n = 1:maxn
   if n==1
       x(n)=x0-(f(x0)/fd(x0));
       error(n)= abs((x(n)-x0)/x(n));
   else
       x(n)=x(n-1)-(f(x(n-1))/fd(x(n-1)));
       error(n)= abs((x(n)-x(n-1))/x(n));
   end
   if f(x(n)) == 0 || error(n)<=tol
      root = x(n);
      iterations=n;
      return
   end
end
root = x(maxn);
iterations=maxn;
end