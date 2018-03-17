a=-1;b=1;%始末点
x0=a:(b-a)/10:b;
y0=(1-x0.^2).^(1/2);%x0,y0为已知点
x=a:(b-a)/50:b;%产生位于始末点之间的总共51个插值点
y=(1-x.^2).^(1/2);%产生原函数值用于比较
y1=lagr(x0,y0,x);%计算拉格朗日插值
y2=interp1(x0,y0,x);%计算分段线性插值
y3=spline(x0,y0,x);%计算三次样条插值
[x;y;y1;y2;y3]'
%作图
%作图
plot(x,y,x,y1,'k:',x,y2,'r',x,y3,'m--'),axis([-1 1 0 1]),grid on;
figure;
subplot(2,2,1),plot(x,y),axis([-1 1 0 1]),title('y=(1-x^2)^(1/2),-1≤x≤1'),grid on;
subplot(2,2,2),plot(x,y,x,y1,'k:'),axis([-1 1 0 1]),title('拉格朗日'),grid on;
subplot(2,2,3),plot(x,y,x,y2,'r'),axis([-1 1 0 1]),title('分段线性'),grid on;
subplot(2,2,4),plot(x,y,x,y3,'m--'),axis([-1 1 0 1]),title('三次样条'),grid on;

