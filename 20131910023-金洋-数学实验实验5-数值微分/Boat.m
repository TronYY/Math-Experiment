
ts=0:0.01:80;
x0=[0,-100];%��ʼֵ
v1=1;
v2=2;
option=odeset('reltol',1e-6,'abstol',1e-9);
[t,x]=ode23(@river,ts,x0,option,v1,v2);
plot(t,x),grid,title('ͼ1.��λ��-ʱ��')
xlabel('t/s'),ylabel('m')
gtext('x(t)'),gtext('y(t)'),
pause

plot(x(:,1),x(:,2))
title('ͼ2.���ӹ켣')
xlabel('m'),ylabel('m')
ts