function y=rate(r,a0,b,n)
y=a0.*(1+r).^n-b.*((1+r).^n-1)./r;