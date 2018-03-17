r=2;
V=100;
L=25.4;
x=0:0.01:2;
y=water(x,r,V,L);
%判断根所在大致区间
plot(x,y),grid on,xlabel('x'),ylabel('y')
%[x,fv,ef,out]=fzero(@water,[,],[],r,V,L)