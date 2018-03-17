a0=50;
b=4.5;
n=20;
r=0:0.0001:0.1;
y=rate(r,a0,b,n);
%判断根所在大致区间
plot(r,y),grid on,xlabel('r'),ylabel('y')
%[x1,fv1,ef1.out1]=fzero(@rate,[,],[],a0,b,n)