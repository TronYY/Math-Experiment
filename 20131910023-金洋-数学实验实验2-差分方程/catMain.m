x0=100;n=25;
r1=0.0168;r2=0.0055;r3=-0.0450;
%����cat�������������ֲ�ͬ����Ȼ�����£�ÿ��ɽè������������������ȡ��
x1=round(cat(x0,n,r1));
x2=round(cat(x0,n,r2));
x3=round(cat(x0,n,r3));
k=0:n;
[k',x1',x2',x3']%���
plot(k,x1,'r');
xlabel('���');
ylabel('ɽè������ֻ��');
grid on
gtext('r=0.0168');
hold on
plot(k,x2,'r+',k,x2,'b-');
gtext('r=0.0055');
plot(k,x3,'rp',k,x3,'b-');
gtext('r=-0.0450');


