function [x,iterations] = Jacobi(a,b,x0,tol,maxk)
if nargin <5
   maxk=200; 
end
n=length(b);
x=zeros(n,maxk+1);
x(:,1)=x0;
error=zeros(n,maxk);
for k=2:maxk+1
    for i = 1:n
       x(i,k)=b(i);
       for j = 1:n
          if j~=i
             x(i,k)=x(i,k)-x(j,k-1)*a(i,j); 
          end
       end
       x(i,k)=x(i,k)/a(i,i);
       error(i,k-1)=abs((x(i,k)-x(i,k-1))/x(i,k));
    end
    maxerror=max(error(:,k-1));
    if maxerror<=tol
       x=x(:,k);
       iterations=k-1;
       return
    end
end
fprintf("reached max no of iterations")
x=x(:,maxk+1);
iterations=maxk;
end