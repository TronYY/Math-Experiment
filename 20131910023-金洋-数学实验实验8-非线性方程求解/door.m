function y=door(ar,a,b,r,l0,p0,v,F)
y=p0*(l0./(l0-b*tan(ar))).^v*pi*r^2*b-F*cos(ar)*a;