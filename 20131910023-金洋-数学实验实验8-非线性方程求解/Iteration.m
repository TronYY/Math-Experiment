n=30;%��������
precision=10^-6;%����

%�õ�����ʽ1�������
x1=-0.1;%��ֵ
for i=2:n
   x1(i)=f1(x1(i-1));
   if abs(x1(i)-x1(i-1))<=precision
       break
   end
end
x1,i

%�õ�����ʽ2�������
x2=-0.1;%��ֵ
for i=2:n
   x2(i)=f2(x2(i-1));
   if abs(x2(i)-x2(i-1))<=precision
       break
   end
end
x2,i