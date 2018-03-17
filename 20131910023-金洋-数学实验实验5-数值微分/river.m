%分速度函数
function dx=river(t,x,v1,v2)
    s=sqrt(x(1)^2+x(2)^2);
    dx=[v1-x(1)/s*v2;-x(2)/s*v2];
end