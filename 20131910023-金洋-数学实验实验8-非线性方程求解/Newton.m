n=30;%迭代步数
precision=10^-6;%精度

%用牛顿割线法进行求解
x=1;x(2)=4%初值
for i=3:n
   x(i)=x(i-1)-( f(x(i-1)) *  (x(i-1)-x(i-2))  )  /   ( f(x(i-1))- f(x(i-2)));          
   if abs(x1(i)-x1(i-1))<=precision
       break
   end
end
x,i

