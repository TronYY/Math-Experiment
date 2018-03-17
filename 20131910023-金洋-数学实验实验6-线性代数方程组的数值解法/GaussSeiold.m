function ansX=GaussSeiold(A,b)
L=-tril(A,-1);
U=-triu(A,1);
D=diag(diag(A));

n=100;%规定的迭代步数
precision=0.0001;%规定的误差为0.0001
x=linspace(1,1,length(A))';
for i=2:n
   x(:,i)=inv(D-L)*U*x(:,i-1)+inv(D-L)*b;
   if norm( x(:,i)-x(:,i-1))<=precision
       break
   end
end
x,i
p=max(abs(eigs(inv(D-L)*U)))
ansX=x(:,i);





