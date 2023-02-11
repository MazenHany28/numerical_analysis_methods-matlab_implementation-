function [root,iterations] = bisection(f,a,b,tol,maxn)
if nargin<5
   maxn=200;
end
xl(1)=a;   xu(1)=b;
for n = 1:maxn
   xm(n)=(xl(n)+xu(n))/2;
   if n==1
      error(n)=nan; 
   else
      error(n) = abs((xm(n)-xm(n-1))/xm(n)); 
   end
   if f(xm(n))==0 || error(n)<= tol
      root=xm(n);
      iterations=n;
      return
   end
   if f(xl(n))*f(xm(n))< 0 && n<maxn
      xl(n+1)=xl(n);
      xu(n+1)=xm(n);
   elseif f(xl(n))*f(xm(n))> 0 && n<maxn
      xl(n+1)=xm(n);
      xu(n+1)=xu(n); 
   end
end
root=xm(maxn);
iterations=maxn;
end