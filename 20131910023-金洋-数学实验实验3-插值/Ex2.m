a=-1;b=1;%ʼĩ��
x0=a:(b-a)/10:b;
y0=(1-x0.^2).^(1/2);%x0,y0Ϊ��֪��
x=a:(b-a)/50:b;%����λ��ʼĩ��֮����ܹ�51����ֵ��
y=(1-x.^2).^(1/2);%����ԭ����ֵ���ڱȽ�
y1=lagr(x0,y0,x);%�����������ղ�ֵ
y2=interp1(x0,y0,x);%����ֶ����Բ�ֵ
y3=spline(x0,y0,x);%��������������ֵ
[x;y;y1;y2;y3]'
%��ͼ
%��ͼ
plot(x,y,x,y1,'k:',x,y2,'r',x,y3,'m--'),axis([-1 1 0 1]),grid on;
figure;
subplot(2,2,1),plot(x,y),axis([-1 1 0 1]),title('y=(1-x^2)^(1/2),-1��x��1'),grid on;
subplot(2,2,2),plot(x,y,x,y1,'k:'),axis([-1 1 0 1]),title('��������'),grid on;
subplot(2,2,3),plot(x,y,x,y2,'r'),axis([-1 1 0 1]),title('�ֶ�����'),grid on;
subplot(2,2,4),plot(x,y,x,y3,'m--'),axis([-1 1 0 1]),title('��������'),grid on;

