n=30;%��������
precision=10^-6;%����

%��ţ�ٸ��߷��������
x=1;x(2)=4%��ֵ
for i=3:n
   x(i)=x(i-1)-( f(x(i-1)) *  (x(i-1)-x(i-2))  )  /   ( f(x(i-1))- f(x(i-2)));          
   if abs(x1(i)-x1(i-1))<=precision
       break
   end
end
x,i

