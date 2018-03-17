function answer=SQRT2(a)
% 用while循环，只在当相邻两个迭代值的绝对值小于10^-5时结束迭代
Y=2;
X=1/2*(Y+a/Y);
while (abs(X-Y)>=10^-5)
    Y=X;
    X=1/2*(Y+a/Y);
end;
answer=X;