function x=GaussSeiold2(A,b)
diagA=diag(A);

AJ=triu(A,1)+tril(A,-1);
for i=1:length(diagA)
    AJ(i,:)=AJ(i,:)./(-diagA(i));
end
newB=b./diagA;

x1=[0 0 0]';%初值可以任意
x2=AJ*x1+newB;
n=100;%规定的迭代步数
step=0;
precision=0.0001;
while ~((norm(x2-x1)<=precision) ||(step>=n))
   x1=x2;
   for i=1:length(diagA)
      x2(i)=AJ(i,:)*x2+newB(i);%用最新的值进行迭代
   end
   step=step+1;
end
x=x2;