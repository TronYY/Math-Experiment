t=linspace(-10,10,100);
x=3*t./(1+t.^3);
y=3*t.^2./(1+t.^3);
plot(x,y);%叶形线
grid;%网格
%gtext(2,3,'\alpha');%鼠标标记α
title('Leaf');%标题
%axis([-10 10 -20 20]);  x轴最小值，最大值，y轴最小值，最大值
%axis equal;%x，y轴单位长度相等
axis square;%图框为正方形
axis off;%清除坐标刻度