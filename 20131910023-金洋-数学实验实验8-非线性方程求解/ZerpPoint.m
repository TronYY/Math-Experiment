x=-pi:0.01:pi;
z=0*x;
plot(x,z,'k',x,sin(x)-x.^2/2),grid on,gtext('y=sin(x)-x^2/2')%画出y=sin(x)-x^2/2的图形，图形与x轴交点即为方程的解

%用fzero求解
[x1,fv,ef,out]=fzero(inline('sin(x)-x^2/2'),0)
[x1,fv,ef,out]=fzero(inline('sin(x)-x^2/2'),1.5)

%用fsolve求解
[x2,fv,ef,out,jac]=fsolve(inline('sin(x)-x^2/2'),0)
[x2,fv,ef,out,jac]=fsolve(inline('sin(x)-x^2/2'),1.5)

%用solve求解
syms x
x3=solve('sin(x)-x^2/2==0',x)