function y=water(x,r,V,L)
y=r*r*acos(x/r)-x.*sqrt(r*r-x.^2)-V/L;