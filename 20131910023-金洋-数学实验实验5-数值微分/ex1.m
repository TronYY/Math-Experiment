%龙格-库塔法
clc,clear;
ts=[0:0.02:1];
y0=1;%函数初值
[t,y]=ode45(@f1,ts,y0);

hold on
plot(t,y,'r:'),grid;
xlabel('x'),ylabel('y'),gtext('Runge Kutta');

%欧拉法
y2(1)=y0;
h=1/(length(ts)-1);
for i=1:(length(ts)-1)
    y2(i+1)=y2(i)+h*f1(ts(i),y2(i));
end
plot(ts,y2,'g--'),gtext('Euler');

y3=3*exp(t)-2*t-2;
plot(t,y3),gtext('y=3*exp(x)-2*x-2')
hold off