a=0;b=2*pi;%始末点
x0=a:(b-a)/10:b;
y0=sin(x0);%x0,y0为已知点
x=a:(b-a)/50:b;%产生位于始末点之间的总共51个插值点
y=sin(x);%产生原函数值用于比较
y1=lagrange(x0,y0,x);%计算拉格朗日插值
y2=interp1(x0,y0,x);%计算分段线性插值
y3=spline(x0,y0,x);%计算三次样条插值
[x;y;y1;y2;y3]'
%作图
plot(x,y,x,y1,'k:',x,y2,'r',x,y3,'m--'),;
grid on
figure;
subplot(2,2,1),plot(x,y),axis([0 2*pi -1.5 1.5]),title('y=sin(x),0≤x≤2π'),grid on;
subplot(2,2,2),plot(x,y,x,y1,'k:'),axis([0 2*pi -1.5 1.5]),title('拉格朗日'),grid on;
subplot(2,2,3),plot(x,y,x,y2,'r'),axis([0 2*pi -1.5 1.5]),title('分段线性'),grid on;
subplot(2,2,4),plot(x,y,x,y3,'m--'),axis([0 2*pi -1.5 1.5]),title('三次样条'),grid on;

