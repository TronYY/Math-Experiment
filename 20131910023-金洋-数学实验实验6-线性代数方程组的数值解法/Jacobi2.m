function x=Jacobi(A,b)
diagA=diag(A);%取A的对角线元素
%形如Ax=b的方程组，将方程组变形为左侧为未知数，右侧为其他未知数对其的表达式
AJ=triu(A,1)+tril(A,-1);
for i=1:length(diagA)
    AJ(i,:)=AJ(i,:)./(-diagA(i));
end
newB=b./diagA;

x1=[0 0 0]';%初值可以任意
x2=AJ*x1+newB;
n=100;%规定的迭代步数
precision=0.0001;%规定的误差为0.0001
step=0;
%误差小于规定值或迭代步骤达到规定值即可结束迭代
while ~((norm(x2-x1)<=precision) ||(step>=n))
   x1=x2;
   x2=AJ*x1+newB;
   step=step+1;
end
x=x2;
