x=-pi:0.01:pi;
z=0*x;
plot(x,z,'k',x,sin(x)-x.^2/2),grid on,gtext('y=sin(x)-x^2/2')%����y=sin(x)-x^2/2��ͼ�Σ�ͼ����x�ύ�㼴Ϊ���̵Ľ�

%��fzero���
[x1,fv,ef,out]=fzero(inline('sin(x)-x^2/2'),0)
[x1,fv,ef,out]=fzero(inline('sin(x)-x^2/2'),1.5)

%��fsolve���
[x2,fv,ef,out,jac]=fsolve(inline('sin(x)-x^2/2'),0)
[x2,fv,ef,out,jac]=fsolve(inline('sin(x)-x^2/2'),1.5)

%��solve���
syms x
x3=solve('sin(x)-x^2/2==0',x)