function y=lagrange(x0,y0,x)
n=length(x0);%��֪��ĸ���
m=length(x);%��ֵ��ĸ���
for i=1:m
    z=x(i);%z����i����ֵ��
    s=0;%�ۼ�������
    %���¼���Ln(x(i))
    for k=1:n
       p=1;%�۳�������ֵ1
       %���¼���li(x(i))
       for j=1:n
          if j~=k%j=kʱ������
              p=p*(z-x0(j))/(x0(k)-x0(j));
          end
       end
       s=p*y0(k)+s;%s��Ln(x)=��(y0(i)*li(x));
    end
    y(i)=s;%�õ���ֵ��ĺ���ֵ
end
