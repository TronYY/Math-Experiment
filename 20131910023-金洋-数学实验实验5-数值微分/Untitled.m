
ts=0:0.01:80;
x0=[0,-100];%初始值
v1=1;
v2=2;
option=odeset('reltol',1e-6,'abstol',1e-9);
[t,x]=ode23(@river,ts,x0,option,v1,v2);
plot(t,x),grid,title('图1.分位移-时间')
xlabel('t/s'),ylabel('m')
gtext('x(t)'),gtext('y(t)'),
pause

plot(x(:,1),x(:,2))
title('图2.过河轨迹')
xlabel('m'),ylabel('m')
ts