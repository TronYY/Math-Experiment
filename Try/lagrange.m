function y=lagrange(x0,y0,x)
n=length(x0);%已知点的个数
m=length(x);%插值点的个数
for i=1:m
    z=x(i);%z：第i个插值点
    s=0;%累加器清零
    %以下计算Ln(x(i))
    for k=1:n
       p=1;%累乘器赋初值1
       %以下计算li(x(i))
       for j=1:n
          if j~=k%j=k时无意义
              p=p*(z-x0(j))/(x0(k)-x0(j));
          end
       end
       s=p*y0(k)+s;%s：Ln(x)=Σ(y0(i)*li(x));
    end
    y(i)=s;%得到插值点的函数值
end
