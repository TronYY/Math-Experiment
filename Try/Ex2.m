function Ex2(a,b,n,N,s)
%ʼĩ��
x0=linspace(a,b,n);
y0=feval(inline(s),x0);%x0,y0Ϊ��֪��
x=linspace(a,b,N);%����λ��ʼĩ��֮����ܹ�51����ֵ��
y=feval(inline(s),x);%����ԭ����ֵ���ڱȽ�
y1=lagrange(x0,y0,x);%�����������ղ�ֵ
y2=interp1(x0,y0,x);%����ֶ����Բ�ֵ
y3=spline(x0,y0,x);%��������������ֵ
[x;y;y1;y2;y3]'
%��ͼ
%��ͼ
plot(x,y,x,y1,'k:',x,y2,'r',x,y3,'m--'),axis([-1 1 0 1]),grid on;
figure;
subplot(2,2,1),plot(x,y),axis([-1 1 0 1]),title([s,'-1��x��1']),grid on;
subplot(2,2,2),plot(x,y,x,y1,'k:'),axis([-1 1 0 1]),title('��������'),grid on;
subplot(2,2,3),plot(x,y,x,y2,'r'),axis([-1 1 0 1]),title('�ֶ�����'),grid on;
subplot(2,2,4),plot(x,y,x,y3,'m--'),axis([-1 1 0 1]),title('��������'),grid on;

