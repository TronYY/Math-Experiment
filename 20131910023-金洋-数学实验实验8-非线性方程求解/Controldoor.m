a=0.8;
b=0.25;
r=0.04;
l0=0.5;
p0=10000;
v=1.4;
F=25;
ar=0:0.01:pi/2;
y=door(ar,a,b,r,l0,p0,v,F);
%判断根所在大致区间
plot(ar,y),grid on,xlabel('\alpha'),ylabel('y')
%[x,fv,ef,out]=fzero(@door,[,],[],a,b,r,l0,p0,v,F)