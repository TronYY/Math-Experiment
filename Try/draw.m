 x=-3.5:1:3.5;y=x;
 [X,Y]=meshgrid(x,y),
 R=sqrt(X.^2+Y.^2)+eps;
 Z=sin(R)./R
 surf(X,Y,Z);
 xlabel('x'), ylabel('y')
 
 