%构造矩阵A
n=20;
A1=sparse(1:n,1:n,3,n,n);
A2=sparse(1:n-1,2:n,-1/2,n,n);
A3=sparse(1:n-2,3:n,-1/4,n,n);
A=A1+A2+A3+A2.'+A3.';

%给b赋值，x0的值在个函数文件里赋值
b=[5 4 56 4 34 -78 4 5 324 4 32 2 1 4 5 44 23 56 45 39]';

for k=1:3
    for j=1:20
        A(j,j)=A(j,j)*2;
    end
    k
    %雅可比迭代法
    xJ=Jacobi(A,b)
    
end


