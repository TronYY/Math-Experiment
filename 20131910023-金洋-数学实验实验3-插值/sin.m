a=0;b=2*pi;%ʼĩ��
x0=a:(b-a)/10:b;
y0=sin(x0);%x0,y0Ϊ��֪��
x=a:(b-a)/50:b;%����λ��ʼĩ��֮����ܹ�51����ֵ��
y=sin(x);%����ԭ����ֵ���ڱȽ�
y1=lagrange(x0,y0,x);%�����������ղ�ֵ
y2=interp1(x0,y0,x);%����ֶ����Բ�ֵ
y3=spline(x0,y0,x);%��������������ֵ
[x;y;y1;y2;y3]'
%��ͼ
plot(x,y,x,y1,'k:',x,y2,'r',x,y3,'m--'),;
grid on
figure;
subplot(2,2,1),plot(x,y),axis([0 2*pi -1.5 1.5]),title('y=sin(x),0��x��2��'),grid on;
subplot(2,2,2),plot(x,y,x,y1,'k:'),axis([0 2*pi -1.5 1.5]),title('��������'),grid on;
subplot(2,2,3),plot(x,y,x,y2,'r'),axis([0 2*pi -1.5 1.5]),title('�ֶ�����'),grid on;
subplot(2,2,4),plot(x,y,x,y3,'m--'),axis([0 2*pi -1.5 1.5]),title('��������'),grid on;

