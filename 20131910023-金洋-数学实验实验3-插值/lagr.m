function y=lagr(x0,y0,x)
n=length(x0);
m=length(x);
for i=1:m
   z=x(i);
   s=0;
   for j=1:n
      p=1;
      for k=1:n
         if j~=k
            p=(z-x0(k))/(x0(j)-x0(k))*p; 
         end
      end
      s=s+y0(j)*p;
   end
   y(i)=s; 
end