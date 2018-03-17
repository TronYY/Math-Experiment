%龙格-库塔法
ts=[pi/2:0.5:pi/2+100];
g0=[2,-2/pi];
[t,g]=ode45(@BesselFun,ts,g0);
plot(t,g(:,1)),grid,gtext('RungeKuttaex')
hold on

%精确解解
y=sin(t)*sqrt(2*pi/t);
plot(ts,y),gtext('y=sinx*sqrt(2π/x)')

%欧拉法
y2(1)=2;
g2(1)=-2/pi;
h=100/(length(ts)-1);
for i=1:(length(ts)-1)
    y2(i+1)=y2(i)+h*g2(i);
    g2(i+1)=g2(i)+h*((1/4/ts(i)^2-1)*y2(i)-g2(i)/ts(i));
end
n=1:10;
plot(ts(n),y2(n),'g--'),gtext('Euler');
