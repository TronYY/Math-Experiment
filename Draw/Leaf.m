t=linspace(-10,10,100);
x=3*t./(1+t.^3);
y=3*t.^2./(1+t.^3);
plot(x,y);%Ҷ����
grid;%����
%gtext(2,3,'\alpha');%����Ǧ�
title('Leaf');%����
%axis([-10 10 -20 20]);  x����Сֵ�����ֵ��y����Сֵ�����ֵ
%axis equal;%x��y�ᵥλ�������
axis square;%ͼ��Ϊ������
axis off;%�������̶�